<script setup>
defineProps(
    {
      msg: {
        type: String,
        default: "Erro, você não enviou a mensagem",
        required: true
      }
    }
)
</script>

<template>
 <p>{{msg}}</p>
</template>

<style scoped>

</style>