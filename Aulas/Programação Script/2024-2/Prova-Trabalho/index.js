const {createApp} = Vue;

createApp({
    data() {
        return {
            hero: {life: 100, name: "Jubileu"},
            villain: {life: 100, name: "Villain"},
        }
    },
    methods: {
        attack(isHero) {

        },
        defense(isHero) {

        },
        usePotion(isHero) {

        },
        flee(isHero){

        },
        villainAction() {
            const actions = ['attack', 'defense', 'usePotion', 'flee'];
            const randomAction = actions[Math.floor(Math.random() * actions.length)];
            this[randomAction](false);
        }
    }
}).mount("#app")