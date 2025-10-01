// components/PokemonGrid.js
"use client";

import { useState } from 'react';
import Link from 'next/link';
import Image from 'next/image';
import styles from '../app/Home.module.css';

export default function PokemonGrid({ pokemons }) {
    const [searchTerm, setSearchTerm] = useState('');

    const filteredPokemons = pokemons.filter((pokemon) =>
        pokemon.name.toLowerCase().includes(searchTerm.toLowerCase())
    );

    return (
        <div>
            <input
                type="text"
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
                placeholder="Pesquisar Pokémon..."
                className={styles.searchInput}
            />
            <ul className={styles.pokemonGrid}>
                {filteredPokemons.map((pokemon) => (
                    <li key={pokemon.id} className={styles.pokemonCard}>
                        <Link href={`/pokemon/${pokemon.id}`}>
                            <Image
                                src={pokemon.image}
                                alt={pokemon.name}
                                width={150}
                                height={150}
                            />
                            <span className={styles.pokemonName}>{pokemon.name}</span>
                        </Link>
                    </li>
                ))}
            </ul>
        </div>
    );
}