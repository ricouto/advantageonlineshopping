/// <reference types="cypress" />

import { Shopping } from '../../requests'
import { Given, When, Then } from "cypress-cucumber-preprocessor/steps"

const apiPath = Cypress.env('baseApi')
const shopping = new Shopping()

Given('que o cliente realiza a busca do produto {int} no portal', (idProduto) => {
    shopping.api('GET', apiPath, idProduto, '').as('response')
})

Then('verifica o codigo de resposta eh {int}', (status) => {
    cy.get('@response').should((response) => {
        expect(response.status).to.equal(status)
        expect(response.body).to.be.not.empty
        expect(response.body.productId).to.equal(15)
    })
})