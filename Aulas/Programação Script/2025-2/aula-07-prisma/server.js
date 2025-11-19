const express = require('express')
const app = express()
const routes = require('./src/routes/routes')

app.use(express.json())
app.use(routes)

const PORT = 3000; app.listen(PORT, () => console.log(`Servidor rodando na porta ${PORT}`))