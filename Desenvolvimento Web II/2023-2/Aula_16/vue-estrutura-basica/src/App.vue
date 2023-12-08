<template>
  <p>Olá</p>
  <Greeting></Greeting>
  <User></User>
</template>


<script>
import Greeting from "@/components/Greeting.vue";
import User from "@/components/User.vue";
export default {
  name: 'App',
  components: {
    Greeting,
    User
  }
}
</script>
