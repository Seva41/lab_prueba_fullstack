import { useRouter } from 'next/router';
import { useEffect, useState } from 'react';

export default function SetDetail() {
  const router = useRouter();
  const { id } = router.query;
  const [cards, setCards] = useState([]);

  useEffect(() => {
    if (!id) return;
    fetch(`http://localhost:5001/sets/${id}/cards`)
      .then(res => res.json())
      .then(data => setCards(data))
      .catch(err => console.error(err));
  }, [id]);

  return (
    <div>
      <h1>Cards from Set {id}</h1>
      <ul>
        {cards.map(card => (
          <li key={card.id}>
            <a href={`/cards/${card.id}`}>
              {card.name} - {card.rarity}
            </a>
          </li>
        ))}
      </ul>
    </div>
  );
}