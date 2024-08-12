# language: pt

Funcionalidade: Pesquisar produto no Advantage online shopping
Como cliente do portal 
Eu desejo consultar produto cadastrado

    Esquema do Cenario: [TC-01] Pesquisar produto no online shopping - statusCode <status>
      Dado que o cliente realiza a busca do produto <idProduto> no portal
      Entao verifica o codigo de resposta eh <status>

    Exemplos:
        | idProduto | status |
        | 15        | 200    |