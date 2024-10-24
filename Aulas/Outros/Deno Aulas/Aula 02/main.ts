import { Application, Router } from "@oak/oak";

const app = new Application();
const router = new Router();

router.get('/', (ctx) => {
    ctx.response.body = `
     <!DOCTYPE html>
     <html>
     <head><title>Olá oak com rotas!</title><head>
     <body>
        <h1>Rota raiz do OAK</h1>
     </body>
    </html>
    `;
});

router.get('/usuario', (ctx) => {
    ctx.response.body = `Estou no metodo GET`;
});

router.post('/usuario', async (ctx) => {
    const body = await ctx.request.body.json();
    console.log(body);
    ctx.response.status = 201;
    ctx.response.body = { message: "Usuário criado", data: body };
});

app.use(router.routes());
app.use(router.allowedMethods());

console.log("Servidor rodando em http://localhost:8080");
await app.listen({ port: 8080 });