const { createApp } = Vue;

createApp({
    data(){
        return {
            isPurple: false,

        }
    },
    computed: {
        circle_class() {
            return { purple: this.isPurple}
        }
    },
    methods: {

    }
}).mount("#app")