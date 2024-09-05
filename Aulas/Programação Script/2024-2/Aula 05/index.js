const { createApp } = Vue

createApp({
    data() {
        return {
           nomes: [{
                nome: "Leonardo",
                idade: 34,
                email: "Leonardo@thundercats.com",
                expanded: false
            },{
               nome: "Leonardo",
               idade: 34,
               email: "Leonardo@thundercats.com",
               expanded: false
           }]
        }
    },
    methods: {
        expandedItem(item) {
            item.expanded = !item.expanded
        }
    }
}).mount("#app")