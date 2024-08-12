#language: pt

Funcionalidade: Pesquisa de produto por [nome, categoria, preço, inexistente]

  Contexto:
    Dado que o cliente está na página inicial

  @SmokeTest @RegressionTest
  Cenario: pesquisa de produto pelo nome
    Quando digita "notebook hp" na barra de pesquisa
    E clica no botão de pesquisa
    Então o sistema deve exibir uma lista de produtos que correspondem ao "notebook hp"

  @SmokeTest @RegressionTest
  Cenario: pesquisa de produto por categoria
    E seleciona "geladeria" no menu de categorias
    Quando clica no botão de pesquisa
    Então o sistema deve exibir uma lista de produtos que pertencem a "geladeria"

  @SmokeTest @RegressionTest
  Cenario: pesquisa de produto aplicando filtro de preço
    Quando digita "celular motorola" na barra de pesquisa
    E aplica o filtro de preço de "valor mínimo" a "valor máximo"
    E clica no botão de pesquisa
    Então o sistema deve exibir uma lista de produtos que correspondem a "celular motorola" e estão dentro do intervalo de preço especificado

  @SmokeTest @RegressionTest
  Cenario: pesquisa de produto inexistente
    Quando digita "parafuso hexagonal" na barra de pesquisa
    E clica no botão de pesquisa
    Então o sistema deve exibir uma mensagem informando que nenhum produto foi encontrado