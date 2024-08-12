/// <reference types="cypress" />

export class Shopping {
  api = (metodo, endpoint, id, body, err = false) => {
    return cy.request({
      method: metodo,
      url: `${endpoint}/${id}`,
      headers: {
        'accept': '*/*',
        'content-type': 'application/json'
      },
      body: body,
      failOnStatusCode: err
    })
  }
}