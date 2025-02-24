import { useEffect, useState } from 'react';

export default function Home() {
  const [sets, setSets] = useState([]);

  useEffect(() => {
    fetch('http://localhost:5001/sets')
      .then(res => res.json())
      .then(data => setSets(data))
      .catch(err => console.error(err));
  }, []);

  return (
    <div>
      <h1>Pokémon TCG Sets</h1>
      <ul>
        {sets.map(setItem => (
          <li key={setItem.id}>
            <a href={`/sets/${setItem.id}`}>
              {setItem.name} - {setItem.series}
            </a>
          </li>
        ))}
      </ul>
    </div>
  );
}