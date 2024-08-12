/// <reference types="cypress" />

import { Given, When, Then } from "cypress-cucumber-preprocessor/steps"
import commomPage from "../../../pages/commomPage"
import carrinhoPage from "../../../pages/carrinhoPage"

const webPath = Cypress.env('baseUrl')
const detalhesProutoUrl = 'product/'

Given('que vejo os detalhes do produto {int}', (idPrdouto) => {
    commomPage.visitarPagina(`${webPath}${detalhesProutoUrl}` + idPrdouto)
})

When('clico no botao adicionar ao carrinho', () => {
    carrinhoPage.incluirCarrinho()
    carrinhoPage.verCarrinho()
})

When('valido o produto {string} incluido para finalizar a compra', (nomePrdouto) => {
    carrinhoPage.verificarProduto(nomePrdouto)
})