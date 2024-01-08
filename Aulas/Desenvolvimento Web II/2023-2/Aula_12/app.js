const {createApp} = Vue;

createApp({
    data() {
        return {
            nomes: [
                {nome: "Leo", idade: 34, email: 'leo@email.com', expanded: false},
                {nome: "Carol", idade: 33, email: 'Carol@email.com', expanded: false},
                {nome: "Lana", idade: 1, email: 'Lana@email.com', expanded: false},
            ]

        }
    },
    methods: {
        expandirItem(item) {
            item.expanded = !item.expanded;
        }
    }
}).mount("#app")