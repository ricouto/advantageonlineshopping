#language: pt

Funcionalidade: Validação sem produto no estoque no checkout - fluxo negativo

  Contexto:
    Dado que o cliente adicionou produtos ao carrinho
    
  @SmokeTest @RegressionTest
  Cenario: Verificar mensagem de erro para produto fora de estoque na tela de pagamento
    E um dos produtos ficou fora de estoque
    Quando está na tela de pagamento
    Entao o sistema deve exibir uma mensagem de erro informando que o produto está fora de estoque
    E o cliente deve ser solicitado a remover o produto ou alterar a quantidade