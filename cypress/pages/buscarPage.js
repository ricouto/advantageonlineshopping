import elem from '../elements/homeEL'

class buscarPage {

    visitarPagina(webPath){
        cy.visit(webPath)
    };

    pesquisarProduto(){
        cy.get(elem.btnPesquisa()).click()
    };

    digitarProduto(tipoPrdouto){
        cy.get(elem.campoPesquisa()).type(`${tipoPrdouto}{enter}`)
    };

    verificarProduto(nomePrdouto){
        cy.get(elem.nomeProduto).contains(nomePrdouto)
    };


}   

export default new buscarPage;