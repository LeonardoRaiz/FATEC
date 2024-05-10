const { createApp } = Vue

createApp({
    data() {
        return {
            pokemons: [],
            loading: true,
            searchText: '',
            nextPage: 1
        }
    },
    methods: {
        async fetchPokemons() {
            try{
                const response = await fetch(`https://pokeapi.co/api/v2/pokemon/?offset=${(this.nextPage - 1) * 60}&limit=60`)
                const data = await response.json()
                const pokemonDetailsPromise = data.results.map(async pokemon => this.fetchPokemonData(pokemon.url))
                const pokemonDetails = await Promise.all(pokemonDetailsPromise)
                this.pokemons = [... this.pokemons, ... pokemonDetails]
                this.nextPage++
                console.log(this.pokemons)
            } catch (err) {
                console.error(err)
            }
        },
        async fetchPokemonData(url){
            try {
                const response = await fetch(url)
                const data = await response.json()
                return {
                    id: data.id,
                    name: data.name,
                    sprites: data.sprites,
                    weight: data.weight,
                    types: data.types,
                    showDetails: true
                }
            }catch (err) {
                console.error(err)
            }
        },
        getTypeClass(type) {
            const typeClassMap = {
                fire: "fire",
                grass: "grass",
                water: "water",
                bug: "bug",
                normal: "normal",
                poison: "poison",
                electric: "electric",
                ground: "ground",
                fairy: "fairy",
                fighting: "fighting",
                psychic: "psychic",
                ice: "ice",
                flying: "flying",
                ghost: "ghost",
                dragon: "dragon",
                steel: "steel",
                dark: "dark",
                rock: "rock"
            }

            return typeClassMap[type] || ""
        }
    }
}).mount("#app")