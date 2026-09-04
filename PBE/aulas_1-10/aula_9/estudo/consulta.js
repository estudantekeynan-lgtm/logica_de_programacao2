const fs =require('fs');
const readline =require('readline-sync');

console.log("===Sistema de consulta de estoque===");


try{
    const dadosTexto = fs.readFileSync('estoque.json','utf-8');
    const produtos = JSON.parse(dadosTexto);
    const termoBusca = readline.question("Digite o nome do produto ")


    function estoque_100 (){
        console.log("Produtos com menos de 100 unidades no estoque")
        const estoque = produtos.find(p=> p.qtd <100)
        console.log(estoque)
    }

    const resultado = produtos.find(p => p.nome.toLowerCase()===termoBusca.toLowerCase())

    if (resultado){
        console.log("\n Produto encontrado")
        console.log(`Id: ${resultado.id}`)
        console.log(`nome: ${resultado.nome}`)
        console.log(`qtd: ${resultado.qtd}`)
    } else{
        console.log("\n Sinto muito produto não esta cadastrado")
    
}} catch(erro){ 
    console.log("Erro ao buscar no banco de dados :"+ erro.message)
        
    }