<script >
import Greeting from "@/components/Greeting.vue";
import User from "@/components/User.vue";

export default {
  name: 'Aula_16',
  components: {
    Greeting,
    User
  },
  data() {
    return {
      idade: 20
    }
  }
}
</script>

<template>

  <p>Olá </p>
  <Greeting :idade="idade"></Greeting>
  <user :idade="idade" @idade-change="idade++"></user>
</template>
