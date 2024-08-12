import elem from '../elements/homeEL'

class carrinhoPage {

    incluirCarrinho() {
        cy.wait(1000)
            .get(elem.btnIncluir()).click()
    };

    verCarrinho() {
        cy.wait(500)
            .get(elem.btnCarrinho()).click()
    };

    verificarProduto(nomePrdouto) {
        cy.get(elem.tabelaProdutoCarrinho()).contains(nomePrdouto)
    };
}

export default new carrinhoPage;