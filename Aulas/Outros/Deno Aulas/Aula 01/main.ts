//Deno run main.ts
//Exemplo simples de Deno para abrir um serviço
Deno.serve(
    { port: 3000, hostname: "127.0.0.1" },
    (_req) => new Response("Olá Deno de um arquivo!")
);



