const { createApp } = Vue

createApp({
    data() {
        return {
            firstName: '',
            lastName: '',
        }
    },
    methods: {
        fullName() {
            return (this.firstName + " " + this.lastName)
        }
    }
}).mount("#app");