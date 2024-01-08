const { createApp } = Vue;

const ComponenteA = {
    template: `
        <div class="componente">
            <h2>Componente A</h2>
            <p>Conteúdo do Componente A</p>
        </div>
    `
};

const ComponenteB = {
    template: `
        <div class="componente">
            <h2>Componente B</h2>
            <p>Conteúdo do Componente B</p>
        </div>
    `
};

createApp({
    data() {
        return {
            componenteAtual: 'ComponenteA'
        };
    },
    methods: {
        alternarComponente() {
            this.componenteAtual = (this.componenteAtual === 'ComponenteA') ? 'ComponenteB' : 'ComponenteA';
        }
    },
    components: {
        ComponenteA,
        ComponenteB
    }
}).mount("#app");
