'use client'
import {useState} from "react";
import Link from "next/link";
import Image from "next/image";


export default function PokemonGrid({pokemons}) {
    const [search, setSearch] = useState("");

    const filteredPokemons = pokemons.filter((pokemon) => pokemon.name.toLowerCase().includes(search.toLowerCase()));

    return (
        <div>
            <input
                type="text"
                value={search}
                onChange={(event) => setSearch(event.target.value)}
                placeholder="Pesquisar Pokémon..."
            />
            <ul>
                {filteredPokemons.map(pokemon => (
                    <li key={pokemon.id}>
                        <Link href={`/pokemon/${pokemon.id}`} >
                            <Image src={pokemon.image} alt={pokemon.name} width={150} height={150} />
                            <span>{pokemon.name}</span>
                        </Link>
                    </li>
                ))}
            </ul>
        </div>
    )
}