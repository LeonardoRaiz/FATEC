const { createApp } = Vue

createApp({
    data() {
        return {
            heroi: {vida: 100},
            vilao: {vida: 100}
        }
    },
    methods: {
        atacar(isHeroi) {
            if (isHeroi) {
                console.log("Herói atacou")
                this.acaoVilao();
            } else {
                console.log("Vilão atacou")
                //this.acaoVilao();
            }
        },
        defender() {

        },
        usarPocao() {

        },
        correr() {

        },
        acaoVilao() {
            const acoes = ['atacar', 'defender', 'usarPocao', 'correr'];
            const acaoAleatoria = acoes[Math.floor(Math.random() * acoes.length)];
            this[acaoAleatoria](false);
        }
    }
}).mount("#app")