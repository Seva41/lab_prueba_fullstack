from flask import Flask, jsonify
from flask_cors import CORS
from models import db, Set, Card
import config

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = config.SQLALCHEMY_DATABASE_URI
db.init_app(app)
CORS(app)

#@app.before_serving
#def startup():
    # Código a ejecutar antes de servir (ej.: inicializar tareas)
#    pass

# GET /sets: Lista todos los sets
@app.route('/sets', methods=['GET'])
def get_sets():
    sets = Set.query.all()
    result = []
    for s in sets:
        result.append({
            "id": s.id,
            "name": s.name,
            "series": s.series,
            "printed_total": s.printed_total,
            "release_date": str(s.release_date),
            "symbol_url": s.symbol_url,
            "logo_url": s.logo_url
        })
    return jsonify(result), 200

# GET /sets/<id>/cards: Lista todas las cartas de un set
@app.route('/sets/<string:set_id>/cards', methods=['GET'])
def get_cards_by_set(set_id):
    cards = Card.query.filter_by(set_id=set_id).all()
    result = []
    for c in cards:
        # Obtenemos las URLs de las imágenes
        images = [img.url for img in c.images]
        result.append({
            "id": c.id,
            "name": c.name,
            "supertype": c.supertype,
            "subtypes": c.subtypes,
            "types": c.types,
            "rarity": c.rarity,
            "images": images  
        })
    return jsonify(result), 200

# (Opcional) GET /cards/<id>: Información detallada de una carta
@app.route('/cards/<string:card_id>', methods=['GET'])
def get_card_detail(card_id):
    card = db.session.get(Card, card_id)
    if not card:
        return jsonify({"error": "Card not found"}), 404

    images = [img.url for img in card.images]

    return jsonify({
        "id": card.id,
        "name": card.name,
        "supertype": card.supertype,
        "subtypes": card.subtypes,
        "types": card.types,
        "rarity": card.rarity,
        "set_id": card.set_id,
        "images": images,
        "markets": [
            {"url": m.url, "updated_at": str(m.updated_at)} for m in card.markets
        ]
    }), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)