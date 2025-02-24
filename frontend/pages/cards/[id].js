import { useEffect, useState } from 'react';
import { useRouter } from 'next/router';

export default function CardDetail() {
  const router = useRouter();
  const { id } = router.query;

  const [card, setCard] = useState(null);     // Carta actual
  const [cards, setCards] = useState([]);     // Lista de cartas del set
  const [currentIndex, setCurrentIndex] = useState(null); // Índice de la carta actual en 'cards'

  // 1. Obtener la carta actual
  useEffect(() => {
    if (!id) return;
    fetch(`http://localhost:5001/cards/${id}`)
      .then(res => res.json())
      .then(data => {
        setCard(data);
      })
      .catch(err => console.error(err));
  }, [id]);

  // 2. Cuando tengamos la carta actual, obtener el set completo de cartas
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

  // Funciones para navegar
  const goPrev = () => {
    if (currentIndex > 0) {
      const prevCard = cards[currentIndex - 1];
      router.push(`/cards/${prevCard.id}`);
    }
  };

  const goNext = () => {
    if (currentIndex < cards.length - 1) {
      const nextCard = cards[currentIndex + 1];
      router.push(`/cards/${nextCard.id}`);
    }
  };

  // Manejo de estados de carga o inexistencia
  if (!card) {
    return (
      <div className="container detail-view">
        <p>Cargando...</p>
      </div>
    );
  }

  return (
    <div className="container detail-view">
      {/* Botón para volver al listado de cartas del set */}
      <button
        onClick={() => router.push(`/sets/${card.set_id}`)}
        className="back-button"
      >
        &larr; Volver a Cartas
      </button>

      <div className="card-detail">
        <h1 className="card-title">{card.name}</h1>
        <p className="card-details">Supertype: {card.supertype}</p>
        <p className="card-details">Rarity: {card.rarity || 'N/A'}</p>

        <div className="nav-arrows">
          {/* Flecha izquierda si no es la primera carta */}
          {currentIndex > 0 && (
            <button className="arrow-button" onClick={goPrev}>
              &lt;
            </button>
          )}

          {/* Imagen principal (usa la segunda si existe, si no la primera) */}
          {card.images && card.images[1] ? (
            <img
              src={card.images[1]}
              alt={card.name}
              className="detail-img"
            />
          ) : card.images && card.images[0] ? (
            <img
              src={card.images[0]}
              alt={card.name}
              className="detail-img"
            />
          ) : (
            <p>Sin imagen</p>
          )}

          {/* Flecha derecha si no es la última carta */}
          {currentIndex < cards.length - 1 && (
            <button className="arrow-button" onClick={goNext}>
              &gt;
            </button>
          )}
        </div>
      </div>
    </div>
  );
}