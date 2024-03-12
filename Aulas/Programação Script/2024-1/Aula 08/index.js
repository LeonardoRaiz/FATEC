const { createApp } = Vue;

createApp({
    data(){
        return {
            nome: "",
            sobrenome: "",
            status: false
        }
    },
    methods: {
        msg() {
            return(`Olá ${this.nome} ${this.sobrenome}`)
        },

        onOff() {
            this.status = !this.status
        }
    }
}).mount("#app")