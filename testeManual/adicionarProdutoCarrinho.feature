#language: pt

Funcionalidade: Adicionar celular NewModelTop10gen ao carrinho

  Contexto:
    Dado que o cliente está na página do celular NewModelTop10gen

  @SmokeTest @RegressionTest
  Cenario: Adicionar um celular NewModelTop10gen ao carrinho com sucesso
    Quando clica no botão "Adicionar ao carrinho"
    Entao o celular NewModelTop10gen deve ser adicionado ao carrinho
    E o carrinho deve exibir o celular NewModelTop10gen adicionado
  
  @RegressionTest
  Cenario: Adicionar múltiplos celular NewModelTop10gens ao carrinho
    Quando clica no botão "Adicionar ao carrinho" para vários celular NewModelTop10gens
    Entao todos os celulares NewModelTop10gens devem ser adicionados ao carrinho
    E o carrinho deve exibir todos os celulares NewModelTop10gens adicionados

  @RegressionTest
  Cenario: Adicionar celular NewModelTop10gen ao carrinho com quantidade específica
    E o cliente seleciona a quantidade "3"
    Quando o cliente clica no botão "Adicionar ao carrinho"
    Entao o carrinho deve exibir o celular NewModelTop10gen com a quantidade "3"

  @SmokeTest @RegressionTest
  Cenario: Adicionar celular NewModelTop10gen ao carrinho com estoque insuficiente
    E o celular NewModelTop10gen tem estoque insuficiente
    Quando o cliente clica no botão "Adicionar ao carrinho"
    Entao o sistema deve exibir uma mensagem de erro informando a falta de estoque