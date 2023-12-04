const  {createApp} = Vue

createApp({
    data() {
        return {
            contador: "0",
            limite: 10
        }
    },
    computed: {
        //Calcula se o contador atingiu o limite
        atingiuLimite() {
            return this.contador >= this.limite
        }
    },
    watch: {
        //Observa mudanças no contador e executa ação
        contador(novoContador, contadorAntigo) {
            if (novoContador > contadorAntigo) {
                console.log(`Contador incrementado para ${novoContador}`);
            } else {
                console.log(`Contador resetado`)
            }
        }
    },
    methods: {
        //Incrementa o contador
        incrementar() {
            if (!this.atingiuLimite) {
                this.contador++;
            }
        },

        resetar() {
            this.contador = 0;
        }
    }
}).mount("#app")