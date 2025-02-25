import { useEffect, useState } from 'react';
import { useRouter } from 'next/router';

export default function SetDetail() {
  const router = useRouter();
  const { id } = router.query;
  const [cards, setCards] = useState([]);
  const [setData, setSetData] = useState(null);

  useEffect(() => {
    if (!id) return;

    // Obtener las cartas del set
    fetch(`http://localhost:5001/sets/${id}/cards`)
      .then(res => res.json())
      .then(data => {
        setCards(data);
      })
      .catch(err => console.error(err));

    // Obtener todos los sets y buscar el set actual para extraer su nombre bonito
    fetch('http://localhost:5001/sets')
      .then(res => res.json())
      .then(data => {
        const found = data.find(item => item.id === id);
        if (found) setSetData(found);
      })
      .catch(err => console.error(err));
  }, [id]);

  return (
    <div className="container">
      <button onClick={() => router.push('/')} style={{ marginBottom: '1rem' }}>
        &larr; Volver a Sets
      </button>

      <h1 className="set-title">
        Cartas del Set: {setData ? setData.name : id}
      </h1>
      <div className="card-list">
        {cards.map(card => (
            <div key={card.id} className="card-item">
            <img
                src={card.images && card.images[0]}
                alt={card.name}
                className="card-img"
            />
            <h2 className="card-title">{card.name}</h2>
            <p className="card-details">Rarity: {card.rarity || 'N/A'}</p>
            <a href={`/cards/${card.id}`}>Ver Detalle</a>
            </div>
        ))}
        </div>
      </div>
  );
}