/// <reference types="cypress" />

import { Given, When, Then } from "cypress-cucumber-preprocessor/steps"
import buscarPage from "../../../pages/buscarPage"
import commomPage from "../../../pages/commomPage"

const webPath = Cypress.env('baseUrl')

Given('que estou na pagina inicial', () => {
    commomPage.visitarPagina(webPath)
})

When('clico no botao de pesquisa', () => {
    buscarPage.pesquisarProduto()
})

When('digito produto {string} na barra de pesquisa', (tipoPrdouto) => {
    buscarPage.digitarProduto(tipoPrdouto)
})

Then('devo ver uma lista com o produto {string} que correspondem a minha busca', (nomePrdouto) => {
    buscarPage.verificarProduto(nomePrdouto)
})