const { ApolloServer, gql } = require('apollo-server');

const typeDefs = gql`
    scalar Date
    
    #Criando o primeiro tipo
    type Usuario {
        id: ID
        nome: String!
        email: String!
        idade: Int
        salario: Float
        vip: Boolean
    }
    
    # Exercicio Produto
    type Produto {
        nome: String!
        preco: String!
        desconto: Float
        precoComDesconto: Float
    } 
    
    # comentário
    # Primeira Query
    type Query {
        ola: String
        horaAtual: Date
        usuarioLogado: Usuario
        produtoEmDestaque: Produto
        numerosMegaSena: [Int!]
    }
`

const resolvers = {
    //resolver do salario do usuario
    Usuario: {
        salario(usuario) {
            return usuario.salario_real;
        }
    },

    Produto: {
      precoComDesconto(produto) {
          return produto.preco - (produto.desconto * produto.preco);
      }
    },

    Query: {
        ola() {
            return "Bom dia"
        },
        horaAtual() {
            return new Date()
        },
        usuarioLogado() {
            return {
                id: 1,
                nome: 'Leonardo',
                email: 'Leonardo@gmail.com',
                idade: 34,
                salario_real: 1500.56,
                vip: true,
            }
        },
        produtoEmDestaque() {
            return {
                nome: 'Macbook',
                preco: 4000,
                desconto: 0.5,
            }
        },
        numerosMegaSena() {
            //return [4 , 5, 10, 56, 25, 43]
            const crescente = (a, b) => a - b
            return Array(6).fill(0)
                .map((n => parseInt(Math.random() * 60 + 1)))
                .sort(crescente)
        }
    }
}

const apolloServer = new ApolloServer({
    typeDefs,
    resolvers,
})

apolloServer.listen().then(({ url }) => {
    console.log(`Executando em ${url}`)
});