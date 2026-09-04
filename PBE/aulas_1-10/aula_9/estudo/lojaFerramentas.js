const fs = require('fs')
const { json } = require('stream/consumers')


const produtos =[
    {id:1,nome:"parafuso",qtd:100},
    {id:2,nome:"porca",qtd:250},
    {id:3,nome:"arruela",qtd:50},
    {id:4,nome:"abraçadeira",qtd:20}
]

function salvarDados(){
    const dadosTexto = JSON.stringify(produtos,null,2)

    fs.writeFileSync ('estoque.json',dadosTexto);
    console.log("Dados salvos com sucesso no arquivo estoque.json")
}
function verEstoqueBaixo(){
    console.log("\n---Produtos com estoque baixo (menos de 100)---");

    const baixoEstoque = produtos.filter(p => p.qtd <100)
    console.log(baixoEstoque);
}
salvarDados();
verEstoqueBaixo();