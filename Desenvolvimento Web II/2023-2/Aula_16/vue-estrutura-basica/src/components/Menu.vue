<template>
  <div class="menu">
    <ul>
      <li @click="changeComponent('aula_16')"><a href="#">Aula 16</a></li>
      <li @click="changeComponent('aula_17')"><a href="#">Aula 17</a></li>
      <li @click="changeComponent('aula_18')"><a href="#">Aula 18</a></li>
      <li @click="changeComponent('aula_19')"><a href="#">Aula 19</a></li>
    </ul>
  </div>

  <div class="content">
    <!-- Renderiza o componente dinamicamente -->
    <component :is="currentComponent" />
  </div>
</template>

<script>
import Aula_16 from "@/components/Aula_16.vue";
import Aula_17 from "@/components/Aula_17.vue";
import Aula_18 from "@/components/Aula_18/Aula_18.vue"

export default {
  data() {
    return {
      currentComponent: 'aula_16',
    };
  },
  methods: {
    changeComponent(componentName) {
      this.currentComponent = componentName;
    },
  },
  components: {
    aula_16: Aula_16,
    aula_17: Aula_17,
    aula_18: Aula_18
  },
};
</script>

<style lang="scss">
.menu {
  background-color: #333;
  padding: 30px;
  border-radius: 10px;
  text-align: center;
  ul {
    list-style-type: none;
    margin: 0;
    padding: 0;

    li {
      display: inline-block;
      margin-right: 50px;

      a {
        text-decoration: none;
        color: #fff;
        font-size: 16px;

        &:hover {
          text-decoration: underline;
        }
      }
    }
  }

  .content {
    margin-top: 20px;
  }
}
</style>
