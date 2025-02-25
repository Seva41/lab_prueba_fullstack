from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class Set(db.Model):
    __tablename__ = "set"
    id = db.Column(db.String, primary_key=True)
    name = db.Column(db.String)
    series = db.Column(db.String)
    printed_total = db.Column(db.Integer)
    release_date = db.Column(db.Date)
    symbol_url = db.Column(db.String)
    logo_url = db.Column(db.String)

    cards = db.relationship("Card", backref="set", lazy=True)

class Card(db.Model):
    __tablename__ = 'card'
    id = db.Column(db.String, primary_key=True)
    name = db.Column(db.String)
    supertype = db.Column(db.String)
    subtypes = db.Column(db.String)
    types = db.Column(db.String)
    rarity = db.Column(db.String)
    set_id = db.Column(db.String, db.ForeignKey("set.id"))

    images = db.relationship("Image", backref="card", lazy=True)
    markets = db.relationship("Market", backref="card", lazy=True)

class Image(db.Model):
    __tablename__ = 'image'
    id = db.Column(db.Integer, primary_key=True)
    card_id = db.Column(db.String, db.ForeignKey('card.id'))
    url = db.Column(db.String)

class Market(db.Model):
    __tablename__ = 'market'
    id = db.Column(db.Integer, primary_key=True)
    card_id = db.Column(db.String, db.ForeignKey('card.id'))
    updated_at = db.Column(db.DateTime)
    url = db.Column(db.String)
    market = db.Column(db.String)