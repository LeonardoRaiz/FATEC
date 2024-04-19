const {createApp} = Vue

createApp({
    data() {
        return {
            ehRoxo: false,
            selecionarCor: "",
            tamanho: 150,
            valor: 0
        }
    },
    computed: {
        circuloRoxo() {
            return { roxo: this.ehRoxo}
        }
    }
}).mount("#app")