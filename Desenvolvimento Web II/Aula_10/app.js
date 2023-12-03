const {createApp} = Vue

createApp({
    data() {
        return {
            isPurple: false,
            selectedColor: '',
            size: 150,
            value: 0
        }
    },
    computed: {
      circle_classes() {
          return { purple: this.isPurple }
      }
    },
    methods: {

    }
}).mount("#app")