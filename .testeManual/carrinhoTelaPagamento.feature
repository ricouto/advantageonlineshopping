#language: pt

Funcionalidade: Validação dos produtos no carrinho no checkout

  Contexto:
    Dado que o cliente adicionou produtos ao carrinho
    E está na tela de pagamento

  @SmokeTest @RegressionTest
  Cenario: Verificar produtos no carrinho na tela de pagamento
    Quando revisa os itens no carrinho
    Entao todos os produtos adicionados devem estar listados na tela de pagamento
    E as quantidades e preços devem estar corretos

  @SmokeTest @RegressionTest
  Cenario: Verificar total do carrinho na tela de pagamento
    Quando revisa o total do carrinho
    Entao o total deve refletir a soma correta dos preços dos produtos adicionados

  @SmokeTest @RegressionTest
  Cenario: Verificar remoção de produto na tela de pagamento
    Quando remove um produto do carrinho
    Entao o produto removido não deve mais aparecer na lista de produtos
    E o total do carrinho deve ser atualizado corretamente

  @SmokeTest @RegressionTest
  Cenario: Verificar atualização de quantidade de produto na tela de pagamento
    Quando altera a quantidade de um produto
    Entao a quantidade do produto deve ser atualizada na lista de produtos
    E o total do carrinho deve refletir a nova quantidade