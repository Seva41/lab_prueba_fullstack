import { useRouter } from 'next/router';
import { useEffect, useState } from 'react';

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

  if (!card) return <div>Loading...</div>;

  return (
    <div>
      <h1>{card.name}</h1>
      <p>Supertype: {card.supertype}</p>
      <p>Types: {card.types}</p>
      <p>Rarity: {card.rarity}</p>
      <h2>Images</h2>
      <ul>
        {card.images.map((url, i) => (
          <li key={i}>
            <img src={url} alt={card.name} />
          </li>
        ))}
      </ul>
    </div>
  );
}