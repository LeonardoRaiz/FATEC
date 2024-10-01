const { createApp } = Vue;

createApp({
    data() {
        return {
            pokemons: [],
            loading: true,
            searchText: '',
            nextPage: 1,
        }
    },
    methods: {
        async callAPI() {
            try {
                const response = await fetch(`https://pokeapi.co/api/v2/pokemon/?offset=${this.nextPage - 1}&limit=${151}`)
                const data = await response.json();
                const pokemonDetailsPromises = data.results.map(async pokemon => this.fetchPokemonData(pokemon.url));
                console.log(pokemonDetailsPromises)
                const pokemonDetails = await Promise.all(pokemonDetailsPromises);
                console.log(pokemonDetails)
            } catch (error) {
                console.error(error);
            }

        },
        async fetchPokemonData(url) {
            try {
                const response = await fetch(url);
                const data = await response.json();
                return {data}
            } catch (e){
                console.error(e);
            }
        }
    }
}).mount("#app");