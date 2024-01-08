const {createApp} = Vue;

createApp({
    data() {
        return {
            firstName: "Léo",
            lastName: "Raiz"
        }
    },
    methods: {
        fullName() {
            return (`${this.firstName}  ${this.lastName}`)
        }
    }
}).mount("#app")