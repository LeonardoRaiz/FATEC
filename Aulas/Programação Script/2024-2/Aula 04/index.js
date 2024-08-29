const { createApp } = Vue;

createApp({
    data() {
        return {
            nome: "",
            sobrenome: "",
            luz: false
        }
    },
    methods: {
        onOff() {
            this.luz = !this.luz
        }
    }
}).mount("#app")