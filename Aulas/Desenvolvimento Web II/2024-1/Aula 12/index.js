const ComponenteA = {
    template: `
        <div class="componente">
            <h1>Componente A</h1>
            <p>Conteúdo do Componente</p>
        </div>
    `
}

const ComponenteB = {
    template: `
        <div class="componente">
            <h1>Componente B</h1>
            <p>Conteúdo do Componente</p>
        </div>
    `
}

const {createApp} = Vue;

createApp({
    data() {
        return {
            componenteAtual: "ComponenteA"
        }
    },
    methods: {
        alterarComponentes() {
            this.componenteAtual = (this.componenteAtual === "ComponenteA") ? "ComponenteB" : "ComponenteA"
        }
    },
    components: {
        ComponenteA,
        ComponenteB
    }
}).mount("#app")