const fs = require('fs')
try{

 const dadosTexto = fs.readFileSync('estoque.json','utf-8');
    const produtos = JSON.parse(dadosTexto);

    function consultaEstoque(){
        const pesquisa = produtos.find(p => p.qtd<100);
        console.log (pesquisa)
    }
    consultaEstoque()

}
catch(erro){
    console.log("Erro ao buscar no banco de dados :"+ erro.message)
}
   



