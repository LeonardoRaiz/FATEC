import Image from "next/image";
import Link from "next/link";

export async function generateStaticParams() {
    const response = await fetch('https://pokeapi.co/api/v2/pokemon?limit=151')
    const data = await response.json()
    return data.results.map((pokemon, index) => ({
        id: (index + 1).toString()
    }))
}

async function getPokemon(id) {
    const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${id}`)
    const pokemon = await response.json()
    const idPokemon = ('00' + id).slice(-3)
    pokemon.image = `https://assets.pokemon.com/assets/cms2/img/pokedex/full/${idPokemon}.png`;

    return pokemon
}

export async function generateMetadata({ params }) {
    const pokemon = await getPokemon(params.id)
    return {
        title: pokemon.name.charAt(0).toUpperCase() + pokemon.name.slice(1),
    }
}

export default async function Pokemon({ params }) {
    const pokemon = await getPokemon(params.id)
    return (
        <div>
            <h1>{pokemon.name}</h1>
            <Image src={pokemon.image} alt={pokemon.name} width={150} height={150} />
            <div>
                <p>{pokemon.id}</p>
                <p>Peso: {pokemon.weight}</p>
                <p>Altura: {pokemon.height}</p>
                <div>
                    {pokemon.types.map((typeInfo, index) => (
                        <span key={index}>{typeInfo.type.name}</span>
                    ))}
                </div>
                <div>
                    <h2>Habilidades</h2>
                    {pokemon.abilities.map((abilitiesInfo, index) => (
                        <span key={index}>{abilitiesInfo.ability.name}</span>
                    ))}
                </div>
                <div>
                    <h2>Quais games apareceu</h2>
                    {pokemon.game_indices.map((gamesInfo, index) => (
                        <span key={index}>{gamesInfo.version.name}</span>
                    ))}
                </div>
            </div>
            <Link href="/" >Voltar</Link>
        </div>
    )
}