// app/pokemon/[id]/page.js
import Link from 'next/link';
import Image from 'next/image';
import styles from './Pokemon.module.css';

// Gera os parâmetros para todas as 151 páginas de Pokémon em tempo de build
export async function generateStaticParams() {
    const response = await fetch('https://pokeapi.co/api/v2/pokemon?limit=151');
    const data = await response.json();

    return data.results.map((pokemon, index) => ({
        id: (index + 1).toString(),
    }));
}

// Busca os dados para uma página específica
async function getPokemon(id) {
    const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${id}`);
    const pokemon = await response.json();

    const paddedId = ('00' + id).slice(-3);
    pokemon.image = `https://assets.pokemon.com/assets/cms2/img/pokedex/full/${paddedId}.png`;

    return pokemon;
}

// Gera metadados dinâmicos para o <head>
export async function generateMetadata({ params }) {
    const pokemon = await getPokemon(params.id);
    return {
        title: pokemon.name.charAt(0).toUpperCase() + pokemon.name.slice(1),
    };
}

// Componente da página de detalhes
export default async function PokemonPage({ params }) {
    const pokemon = await getPokemon(params.id);

    return (
        <div className={styles.container}>
            <div className={styles.pokemonCard}>
                <h1 className={styles.pokemonName}>{pokemon.name}</h1>
                <Image src={pokemon.image} width={200} height={200} alt={pokemon.name} />
                <div className={styles.details}>
                    <p><strong>Height:</strong> {pokemon.height * 10} cm</p>
                    <p><strong>Weight:</strong> {pokemon.weight / 10} kg</p>
                    <div className={styles.types}>
                        <strong>Types:</strong>
                        <div className={styles.typeList}>
                            {pokemon.types.map((typeInfo, index) => (
                                <span key={index} className={`${styles.type} ${styles[typeInfo.type.name]}`}>
                  {typeInfo.type.name}
                </span>
                            ))}
                        </div>
                    </div>
                </div>
                <Link href="/" className={styles.backButton}>
                    Voltar para a Pokédex
                </Link>
            </div>
        </div>
    );
}