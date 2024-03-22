const { createApp } = Vue

createApp({
    data() {
        return {
            firstName: '',
            lastName: '',
            status: false
        }
    },
    methods: {
        fullName() {
            return (this.firstName + " " + this.lastName)
        },
        onOff() {
            return this.status = !this.status
        }
    }
}).mount("#app");