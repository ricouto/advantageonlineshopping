# language: pt

Funcionalidade: Pesquisar produto no Advantage online shopping
Como cliente do portal 
Eu desejo consultar produto cadastrado

  Esquema do Cenario: [TC-02] Busca de Produto Bem-sucedida
    Dado que estou na pagina inicial
    Quando clico no botao de pesquisa
    E digito produto "<tipoPrdouto>" na barra de pesquisa
    Então devo ver uma lista com o produto "<nomePrdouto>" que correspondem a minha busca

    Exemplos:
      | tipoPrdouto | nomePrdouto                       |
      |      mobile | HP ZBook 17 G2 Mobile Workstation |
