import { useEffect, useState } from 'react';
import { useRouter } from 'next/router';

export default function CardDetail() {
  const router = useRouter();
  const { id } = router.query;
  const [card, setCard] = useState(null);
  const [cards, setCards] = useState([]);
  const [currentIndex, setCurrentIndex] = useState(null);

  // Obtener la carta actual
  useEffect(() => {
    if (!id) return;
    fetch(`http://localhost:5001/cards/${id}`)
      .then(res => res.json())
      .then(data => setCard(data))
      .catch(err => console.error(err));
  }, [id]);

  // Cuando se tenga la carta, se obtiene el listado de su set
  useEffect(() => {
    if (!card || !card.set_id) return;

    fetch(`http://localhost:5001/sets/${card.set_id}/cards`)
      .then(res => res.json())
      .then(data => {
        setCards(data);
        const idx = data.findIndex(c => c.id === card.id);
        setCurrentIndex(idx);
      })
      .catch(err => console.error(err));
  }, [card]);

  const goPrev = () => {
    if (currentIndex > 0) {
      router.push(`/cards/${cards[currentIndex - 1].id}`);
    }
  };

  const goNext = () => {
    if (currentIndex < cards.length - 1) {
      router.push(`/cards/${cards[currentIndex + 1].id}`);
    }
  };

  if (!card) {
    return (
      <div className="container detail-view">
        <p>Cargando...</p>
      </div>
    );
  }

  return (
    <div className="container detail-view">
      <a
        className="back-button"
        onClick={() => router.push(`/sets/${card.set_id}`)}
      >
        &larr; Volver a Cartas
      </a>

      <div className="card-detail">
        <h1 className="card-title">{card.name}</h1>
        <p className="card-details">Supertype: {card.supertype}</p>
        <p className="card-details">Rarity: {card.rarity || 'N/A'}</p>

        {/* Flechas de navegación e imagen */}
        <div className="nav-wrapper">
          {currentIndex > 0 && (
            <button className="arrow-button left" onClick={goPrev}>
              ←
            </button>
          )}

          {card.images && card.images.length > 0 ? (
            <img
              src={card.images[1] || card.images[0]}
              alt={card.name}
              className="detail-img"
            />
          ) : (
            <p>Sin imagen</p>
          )}

          {currentIndex < cards.length - 1 && (
            <button className="arrow-button right" onClick={goNext}>
              →
            </button>
          )}
        </div>

        {/* Market Info */}
        {card.markets && card.markets.length > 0 && (
          <div className="market-section">
            <h2>Market Info</h2>
            {card.markets.map((m, index) => (
              <div key={index} className="market-item">
                <p>Marketplace: {m.market}</p>
                <p>Actualizado: {m.updated_at}</p>
                <a href={m.url} target="_blank" rel="noopener noreferrer">
                  Ver precios
                </a>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}