from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.dialects.postgresql import ARRAY
from datetime import datetime

db = SQLAlchemy()

class Set(db.Model):
    __tablename__ = "sets" 
    __table_args__ = {"schema": "public"}
    
    id = db.Column(db.String, primary_key=True)
    name = db.Column(db.String, nullable=False)
    series = db.Column(db.String, nullable=False)
    printed_total = db.Column(db.Integer)
    release_date = db.Column(db.Date)
    symbol_url = db.Column(db.String)
    logo_url = db.Column(db.String)
    total = db.Column(db.Integer)
    ptcgo_code = db.Column(db.String)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow)

    cards = db.relationship("Card", backref="set", lazy=True)

class Card(db.Model):
    __tablename__ = "card"
    __table_args__ = {"schema": "public"}
    
    id = db.Column(db.String, primary_key=True)
    name = db.Column(db.String, nullable=False)
    supertype = db.Column(db.String, nullable=False)
    subtypes = db.Column(ARRAY(db.String))
    types = db.Column(ARRAY(db.String))
    rarity = db.Column(db.String)
    set_id = db.Column(db.String, db.ForeignKey("public.sets.id"), nullable=False)
    number = db.Column(db.String, nullable=False)

    images = db.relationship("Image", backref="card", lazy=True)
    markets = db.relationship("Market", backref="card", lazy=True)

class Image(db.Model):
    __tablename__ = "image"
    __table_args__ = {"schema": "public"}
    
    id = db.Column(db.Integer, primary_key=True)
    card_id = db.Column(db.String, db.ForeignKey("public.card.id"), nullable=False)
    url = db.Column(db.String, nullable=False)
    type = db.Column(db.String, nullable=False)

class Market(db.Model):
    __tablename__ = "market"
    __table_args__ = {"schema": "public"}
    
    id = db.Column(db.Integer, primary_key=True)
    card_id = db.Column(db.String, db.ForeignKey("public.card.id"), nullable=False)
    updated_at = db.Column(db.Date, nullable=False)
    url = db.Column(db.String, nullable=False)
    market = db.Column(db.String, nullable=False)
