const componenteA = {
    template: `
        <div class="componente">
            <h2> Componente A </h2>
            <p> Conteúdo do componente </p>
        </div>
    `
}

const componenteB = {
    template: `
        <div class="componente">
            <h2> Componente B </h2>
            <p> Conteúdo do componente </p>
        </div>
    `
}

const {createApp} = Vue

createApp({
    data() {
        return {
            componenteAtual: 'componenteA'
        }
    },
    components: {
        componenteA,
        componenteB
    },
    methods: {
        alterarComponente() {
            this.componenteAtual = (this.componenteAtual === 'componenteA') ? 'componenteB' : 'componenteA'
        }
    }
}).mount("#app");