# language: pt

Funcionalidade: Validar o produto incluido no carrinho
Como cliente do portal 
Eu desejo verificar produto no carrinho

  Esquema do Cenario: [TC-03] Busca de Produto Bem-sucedida
    Dado que vejo os detalhes do produto <idPrdouto>
    Quando clico no botao adicionar ao carrinho
    Então valido o produto "<nomePrdouto>" incluido para finalizar a compra

    Exemplos:
      | idPrdouto | nomePrdouto                |
      |        16 | HP ELITEPAD 1000 G2 TABLET |