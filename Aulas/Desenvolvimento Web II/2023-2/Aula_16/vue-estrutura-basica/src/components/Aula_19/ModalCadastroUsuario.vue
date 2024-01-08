<template>
  <div class="modal">
    <div class="modal">
      <h2>Cadastro de Usuário</h2>

      <!-- Formulário de Cadastro -->
      <form @submit.prevent="cadastrarUsuario">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" v-model="usuario.nome" required>

        <label for="email">E-mail:</label>
        <input type="email" id="email" v-model="usuario.email" required>

        <label for="senha">Senha:</label>
        <input type="password" id="senha" v-model="usuario.senha" required>

        <!-- Botão de Cadastro -->
        <button type="submit">Cadastrar</button>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  name: "ModalCadastroUsuario",
  data() {
    return {
      // Dados do usuário a serem cadastrados
      usuario: {
        nome: "",
        email: "",
        senha: "",
      },
    };
  },
  methods: {
    cadastrarUsuario() {
      // Lógica para cadastrar o usuário (pode ser implementada posteriormente)
      console.log("Usuário cadastrado:", this.usuario);
      this.fecharModal();
    },
    fecharModal() {
      // Método para fechar o modal
      this.$emit("fechar-modal");
    },

  },
};
</script>

<style scoped>
/* Estilos do modal (pode ser estilizado conforme necessário) */
.modal {
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  padding: 20px;
  background-color: #fff;
  border: 1px solid #ccc;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

form {
  display: flex;
  flex-direction: column;
  gap: 10px;
}

label {
  font-weight: bold;
}
</style>
