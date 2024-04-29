const { createApp } = Vue;

createApp({
    data() {
        return {
            pokemons: [],
            loading: true,
            searchText: '',
            nextPage: 1
        }
    },
    computed: {

    },
    created() {
        this.fetchPokemons();
        window.addEventListener('scroll', this.handleScroll)
    },
    destroyed() {
        window.removeEventListener('scroll', this.handleScroll)
    },
    methods: {
        async fetchPokemons() {
            try {
                const response = await fetch(`https://pokeapi.co/api/v2/pokemon?offset=${(this.nextPage - 1) * 60}&limit=60`)
                const data = await response.json();
                const pokemonDetailsPromises = data.results.map(async pokemon => this.fetchPokemonData(pokemon.url))
                const pokemonDetails = await Promise.all(pokemonDetailsPromises)
                this.pokemons = [... this.pokemons, ... pokemonDetails];
                this.nextPage++;
                this.loading = false;
            } catch (error) {
                console.error(error)
            }
        },
        async fetchPokemonData(url){
            try {
                const response = await fetch(url);
                const data = await response.json();
                return {
                    id: data.id,
                    name: data.name,
                    weight: data.weight,
                    types: data.types,
                    sprite: data.sprites,
                    showDetails: true,
                }
            } catch (error) {
                console.error(error)
            }
        },
        getTypeClass(type) {
            const typeClassMap = {
                fire: 'fire',
                grass: 'grass',
                water: 'water',
                bug: 'bug',
                normal: 'normal',
                poison: 'poison',
                electric: 'electric',
                fairy: 'fairy',
                fighting: 'fighting',
                ground: 'ground',
                rock: 'rock',
                ghost: 'ghost',
                dragon: 'dragon',
                ice: 'ice',
                psychic: 'psychic',
                steel: 'steel',
                dark: 'dark',
                flying: 'flying'
            }

            return typeClassMap[type] || ''
        },
        handleScroll() {
            const bottomOfWindow =
                document.documentElement.scrollTop + window.innerHeight ===
                document.documentElement.offsetHeight;

            if (bottomOfWindow && !this.loading) {
                this.loading = true;
                this.fetchPokemons();
            }
        }
    }

}).mount("#app");