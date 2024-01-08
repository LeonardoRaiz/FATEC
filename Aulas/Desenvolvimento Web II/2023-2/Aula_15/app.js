const { createApp } = Vue;

createApp({
    data() {
        return {
            pokemons: [],
            loading: true,
            searchText: '',
            nextPage: 1,
        };
    },
    computed: {
        filteredPokemons() {
            return this.pokemons.filter(pokemon =>
                pokemon.name.toLowerCase().includes(this.searchText.toLowerCase())
            );
        },
    },
    created() {
        this.fetchPokemons();
        window.addEventListener('scroll', this.handleScroll);
    },
    destroyed() {
        window.removeEventListener('scroll', this.handleScroll);
    },
    methods: {
        capitalizeFirstLetter(string) {
            return string.charAt(0).toUpperCase() + string.slice(1);
        },
        async fetchPokemons() {
            try {
                const response = await fetch(`https://pokeapi.co/api/v2/pokemon?offset=${(this.nextPage - 1) * 60}&limit=60`);
                const data = await response.json();
                const pokemonDetailsPromises = data.results.map(async pokemon => this.fetchPokemonData(pokemon.url));
                const pokemonDetails = await Promise.all(pokemonDetailsPromises);
                this.pokemons = [...this.pokemons, ...pokemonDetails];
                this.nextPage++;
                this.loading = false;
            } catch (error) {
                console.error('Error fetching Pokémon data:', error);
            }
        },
        async fetchPokemonData(url) {
            try {
                const response = await fetch(url);
                const data = await response.json();
                return {
                    id: data.id,
                    name: data.name,
                    weight: data.weight,
                    types: data.types,
                    sprites: data.sprites,
                    showDetails: false,
                };
            } catch (error) {
                console.error('Error fetching Pokémon details:', error);
            }
        },
        async toggleDetails(pokemon) {
            pokemon.showDetails = !pokemon.showDetails;
        },
        handleScroll() {
            const bottomOfWindow =
                document.documentElement.scrollTop + window.innerHeight ===
                document.documentElement.offsetHeight;

            if (bottomOfWindow && !this.loading) {
                this.loading = true;
                this.fetchPokemons();
            }
        },
        getTypeClass(type) {
            // Mapeia os tipos para as classes correspondentes
            const typeClassMap = {
                fire: 'fire',
                grass: 'grass',
                water: 'water',
                bug: 'bug',
                normal: 'normal',
                poison: 'poison',
                electric: 'electric',
                ground: 'ground',
                fairy: 'fairy',
                fighting: 'fighting',
                psychic: 'psychic',
                rock: 'rock',
                ice: 'ice',
                ghost: 'ghost',
                dragon: 'dragon',
                dark: 'dark',
                steel: 'steel',
                flying: 'flying',
            };

            return typeClassMap[type] || '';
        },
    },
}).mount('#app');
