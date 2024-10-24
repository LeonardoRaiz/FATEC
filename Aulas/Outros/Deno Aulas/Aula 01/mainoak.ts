import { Application } from "jsr:@oak/oak/application";
const app = new Application();

app.use((ctx) => {
    ctx.response.body = "Olá Deno de uma aplicação oak";
})

app.listen({port: 8000});