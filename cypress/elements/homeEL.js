class homeEL {
    
    //botao
    btnPesquisa = () => '#search > a'
    
    //Campo
    campoPesquisa = () => '[id="autoComplete"]'

    //infoProduto
    nomeProduto = () => '[class="cell categoryRight"] ul li p a[class~="productName"]'
}

export default new homeEL;