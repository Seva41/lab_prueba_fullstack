import { useEffect, useState } from 'react';
import styles from '../styles/Home.module.css';

export default function Home() {
    const [sets, setSets] = useState([]);
  
    useEffect(() => {
      fetch('http://localhost:5001/sets')
        .then(res => res.json())
        .then(data => setSets(data))
        .catch(err => console.error(err));
    }, []);
  
    return (
      <div className="container">
        <h1 className="set-title">Pokémon TCG Sets</h1>
        <div className="set-list">
          {sets.map((setItem) => (
            <div key={setItem.id} className="set-item">
              <img
                src={setItem.logo_url}
                alt={setItem.name}
                className="set-logo"
              />
              <div className="set-text">
                <h2 className="set-title">{setItem.name}</h2>
                <p className="set-info">{setItem.series}</p>
              </div>
              <a href={`/sets/${setItem.id}`}>Ver Cartas</a>
            </div>
          ))}
        </div>
      </div>
    );
  }