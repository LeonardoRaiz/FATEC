const { createApp } = Vue;

createApp({
    data() {
        return {
            display: "0",
            numeroAnterior: null,
            numeroAtual: null,
            operador: null
        }
    },
    methods: {
        lidarBotao(valor) {
            switch (valor)
            {
                case '*':
                case '/':
                case '-':
                case '+':
                    this.lidarOperador(valor);
                    break;

                case '.':
                    this.lidarDecimal();
                    break;

                case 'C':
                    this.lidarLimpar();
                    break;

                case '=':
                    this.lidarIgual();
                    break;

                default:
                    this.lidarNumero(valor);
            }
        },
        lidarOperador(valor) {
            console.log("O botão digitado foi: ", valor);
        },
        lidarDecimal() {
            console.log("Entrou no decimal");
        },
        lidarLimpar() {
            this.display = '0';
            this.numeroAtual = null;
            this.numeroAnterior = null;
            this.operador = null;
        },
        lidarIgual() {
            console.log("Entrou no Igual");
        },
        lidarNumero(valor) {
            console.log("O botão digitado foi: ", valor);
        }
    }
}).mount("#app");