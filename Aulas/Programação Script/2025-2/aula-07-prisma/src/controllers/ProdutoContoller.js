const ProdutoDTOCreateRequest = require('../dtos/ProdutoDTOCreateRequest');

const ProdutoDTOResponse = require('../dtos/ProdutoDTOResponse');

const UnityOfWork = require('../repositories/UnitOfWork');
const uow = new UnityOfWork();

const ProdutoController = {
   async create(request, response) {
      const dto = new ProdutoDTOCreateRequest(request.body);
      const produto = await uow.produtos.create(dto);
      response.status(201).json(new ProdutoDTOResponse(produto));
   },
   async listAll(request, response) {
       const produtos = await uow.produtos.findAll({catalogo: true});
       response.json(produtos.map(produto => new ProdutoDTOResponse(produto)));
   },
   async listById(request, response) {
       const produto = await uow.produtos.findById(request.params.id, {catalogo: true});
       if (!produto) {
           return response.status(404).json({erro: "Produto não encontrado"});
       }
       response.json(new ProdutoDTOResponse(produto));
   },
   async update(request, response) {
       const dto = new ProdutoDTOCreateRequest(request.body);
       const produtoAtualizado = await uow.produtos.update(request.params.id, dto);
       response.json(new ProdutoDTOResponse(produtoAtualizado));
   },
   async delete(request, response) {
       await uow.produtos.delete(Number(request.params.id));
       response.status(204).send();
   }
}

module.exports = ProdutoController;