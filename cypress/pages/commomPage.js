class commomPage {

    visitarPagina(webPath){
        cy.visit(webPath)
    };
}   

export default new commomPage;