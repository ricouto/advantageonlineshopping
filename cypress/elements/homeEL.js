class homeEL {
    
    //botao
    btnPesquisa = () => '#search > a'
    
    //Campo
    campoPesquisa = () => '[id="autoComplete"]'

    //infoProduto
    nomeProduto = () => '[class="cell categoryRight"] ul li p a[class~="productName"]'

    btnIncluir = () => '[name="save_to_cart"]'

    btnCarrinho = () => '[id="menuCart"]'

    tabelaProdutoCarrinho = () =>'td label[class~=productName]'
}

export default new homeEL;