import { useEffect, useState } from 'react';
import { useRouter } from 'next/router';

export default function CardDetail() {
  const router = useRouter();
  const { id } = router.query;
  const [card, setCard] = useState(null);

  useEffect(() => {
    if (!id) return;
    fetch(`http://localhost:5001/cards/${id}`)
      .then(res => res.json())
      .then(data => setCard(data))
      .catch(err => console.error(err));
  }, [id]);

  if (!card)
    return (
      <div className="container">
        <p>Cargando...</p>
      </div>
    );

  return (
    <div className="container">
      {/* Botón para volver a la lista de cartas del set */}
      <button
        onClick={() => {
          if (card.set_id) {
            router.push(`/sets/${card.set_id}`);
          } else {
            router.back();
          }
        }}
        style={{ marginBottom: '1rem' }}
      >
        &larr; Volver a Cartas
      </button>

      <div className="card-detail">
        <h1 className="card-title">{card.name}</h1>
        <p className="card-details">Supertype: {card.supertype}</p>
        <p className="card-details">Types: {card.types || 'N/A'}</p>
        <p className="card-details">Rarity: {card.rarity || 'N/A'}</p>

        {/* Mostrar solo la segunda imagen (grande) */}
        {card.images && card.images[1] && (
          <img
            src={card.images[1]}
            alt={card.name}
            style={{ maxWidth: '100%' }}
          />
        )}
      </div>
    </div>
  );
}