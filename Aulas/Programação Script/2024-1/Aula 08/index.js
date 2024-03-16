const { createApp } = Vue;

createApp({
    data(){
        return {
            nome: "",
            sobrenome: "",
            status: false,
            interruptor: '',
            ultimoEstado: 'apagada'
        }
    },
    methods: {
        msg() {
            return(`Olá ${this.nome} ${this.sobrenome}`)
        },

        onOff() {
            this.status = !this.status
        },
        verificaEstado: function () {
            if(this.interruptor === 'acesa' || this.interruptor === 'apagada'){
                this.ultimoEstado = this.interruptor;
            }
        }
    }
}).mount("#app")