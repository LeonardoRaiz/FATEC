<template>
  <div class="content">
    <button type="button" @click="flag = !flag">Toggle</button>

    <transition name="fade" mode="out-in">
      <h2 v-if="flag" >Hello world</h2>
      <h2 v-else >Another Hello</h2>
    </transition>

    <h1>ZOOM!</h1>
    <transition name="zoom">
      <h3 v-if="flag" >Hello!</h3>
    </transition>

    <h1>List</h1>
    <input type="text" v-model="textInput">
    <button type="button" @click="adicionarTexto()">Add</button>
    <ul>
      <transition-group name="fade">
        <li v-for="(word, index) in words" :key="word" @click="removeItem(index)">
          {{word}}
        </li>
      </transition-group>
    </ul>
  </div>

</template>

<script >
  export default {
    name: "App",
    data() {
      return {
        flag: false,
        words: ['Léo ', 'Carol', 'Lana'],
        textInput: ''
      }
    },
    methods: {
      adicionarTexto() {
        if (this.textInput.trim() !== '') {
          this.words.push(this.textInput);
          this.textInput = '';
        }
      },
      removeItem(index) {
        this.words.splice(index, 1)
      }
    },
  }
</script>

<style lang="scss" scoped>
  .content {
    margin: 20px;
  }
  button {
    height: 50px;
    width: 100px;
    border: none;
    background: #00BFFF;
    border-radius: 5px;

    &:active{
      box-shadow: rgb(0, 0, 0) 5px 5px 10px 0px inset;
      background: darken(#00BFFF, 25%);
      transform: translateY(1px);
      color: #FFF;
    }
  }

  .fade-enter-from {
    opacity: 0;
  }

  .fade-enter-active {
    transition: all 0.25s linear;
  }

  .fade-leave-to {
    transition: all 0.25s linear;
    opacity: 0;
  }

  .fade-move {
    transition: all 1s linear;
  }

  .fade-leave-active {
    position: absolute;
  }

  h3 {
    width: 100px;
    padding: 10px;
    margin: 10px;
  }

  .zoom-enter-active {
    animation: zoom-in 1s linear forwards;
    transition: all 1s linear;
  }

  .zoom-leave-active {
    animation: zoom-out 1s linear forwards;
    transition: all 1s linear;
  }

  @keyframes  zoom-in {
    from {
      transform: scale(0, 0);
    } to {
      transform: scale(1, 1);
    }
  }

  @keyframes  zoom-out {
    from {
      transform: scale(1, 1);
    } to {
      transform: scale(0, 0);
    }
  }

  input {
    width: 300px;
    height: 50px;
    border: none;
    border-bottom: solid black 1px;
    font-size: 40px;
    padding: 10px;
    margin-bottom: 10px;
    margin-right: 10px;
    outline: none;
    border-radius: 10px;
  }

  li {
    margin: 5px;
    width: 100px;
    height: 50px;
    border: solid gray 1px;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    border-radius: 5px;
  }
</style>