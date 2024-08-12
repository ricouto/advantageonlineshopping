#language: pt

Funcionalidade: Adicionar celular NewModelTop10gen ao carrinho - fluxo negativo

  Contexto:
    Dado que o cliente está na página do celular NewModelTop10gen
    E não está logado

  @SmokeTest @RegressionTest
  Cenario: Adicionar celular NewModelTop10gen ao carrinho sem estar logado
    Dado o cliente está na página do celular NewModelTop10gen
    Quando clica no botão "Adicionar ao carrinho"
    Entao o sistema deve solicitar que o cliente faça login ou crie uma conta