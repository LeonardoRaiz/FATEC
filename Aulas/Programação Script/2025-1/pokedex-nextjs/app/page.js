// app/page.js
import styles from './Home.module.css';
import PokemonGrid from '../components/PokemonGrid';

async function getPokemons() {
    const response = await fetch('https://pokeapi.co/api/v2/pokemon?limit=151');
    const data = await response.json();

    return data.results.map((pokemon, index) => {
        const paddedId = ('00' + (index + 1)).slice(-3);
        const image = `https://assets.pokemon.com/assets/cms2/img/pokedex/full/${paddedId}.png`;
        return {
            ...pokemon,
            id: index + 1,
            image,
        };
    });
}

export default async function Home() {
    const pokemons = await getPokemons();

    return (
        <main className={styles.main}>
            <div className={styles.container}>
                <h1 className={styles.title}>Pokédex</h1>
                <PokemonGrid pokemons={pokemons} />
            </div>
        </main>
    );
}