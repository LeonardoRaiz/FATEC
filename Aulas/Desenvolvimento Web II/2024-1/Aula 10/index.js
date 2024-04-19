const {createApp} = Vue

createApp({
    data(){
        return {
            heros: [
                {nome: "Scott", idade: 22, email:"scottvsworld@email.com", expanded: false},
                {nome: "Scott", idade: 22, email:"scottvsworld@email.com", expanded: false},
                {nome: "Scott", idade: 22, email:"scottvsworld@email.com", expanded: false},
                {nome: "Scott", idade: 22, email:"scottvsworld@email.com", expanded: false},
            ]
        }
    },
    methods: {
        expandirItem(item){
            item.expanded = !item.expanded
        }
    }
}).mount("#app")