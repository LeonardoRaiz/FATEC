const express = require('express')

const app = express()
app.use(express.json())

// --- Banco de dados ---
let users = [
    {id: 1, nome: 'Leo', email: 'leo@e-mail.com'},
    {id: 2, nome: 'Carol', email: 'carol@e-mail.com'},
    {id: 3, nome: 'Lana', email: 'lana@e-mail.com'},
]

// --- ROTA RAIZ -----
app.get('/', (req, res) => {
    res.send('<h1>Servidor API de Usuários. Acesse /usuarios</h1>')
})

// ---- ROTA USUARIOS ----
app.get('/usuarios', (req, res) => {
    res.json(users)
})

// ---- ROTA CREATE USUARIO ----
app.post('/usuario', (req, res) => {
    const novoUsuario = req.body
    console.log("Novo Usuário:", novoUsuario)
    users.push(novoUsuario)
    res.status(201).json(novoUsuario)
})

// ---- ROTA USUARIO POR ID ----
app.get('/usuario/:id', (req,res) => {
    const id = parseInt(req.params.id)
    const usuario = users.find(user => user.id === id)

    if(!usuario) {
        return res.status(404).json({message: "Usuário não encontrado"})
    }

    res.json(usuario)
})

// ---- ROTA UPDATE USUARIO ----
app.put('/usuario/:id', (req, res) => {
    const id = parseInt(req.params.id)
    const dadosUsuario = req.body

    const index = users.findIndex(user => user.id === id)
    if(index === -1){
        return res.status(404).json({message: "Usuário não encontrado"})
    }
    users[index] = {...users[index], ...dadosUsuario}
    res.json(users[index])
})

// ---- ROTA EXCLUIR USUARIO ----
app.delete('/usuario/:id', (req, res) => {
    const id = parseInt(req.params.id)
    const index = users.findIndex(user => user.id === id)

    if(index === -1){
        return res.status(404).json({message: "Usuário não encontrado"})
    }

    users.splice(index, 1)
    res.status(204).json({message: "Usuário excluído com sucesso"})
})

app.listen(5001, () => {
    console.log('Servidor rodando na porta 5001')
})