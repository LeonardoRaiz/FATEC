const { createApp } = Vue

createApp({
    data() {
        return {
            nomes: [{nome: "Jubileu", idade: 17, email: "Jubileu@thundercats.com", expanded: false}, {nome: "Jubileu", idade: 17, email: "Jubileu@thundercats.com", expanded: false}, {nome: "Jubileu", idade: 17, email: "Jubileu@thundercats.com", expanded: false}, {nome: "Jubileu", idade: 17, email: "Jubileu@thundercats.com", expanded: false},]
        }
    },
    methods: {
        expandirItem(item) {
            item.expanded = !item.expanded
        }
    }
}).mount("#app")