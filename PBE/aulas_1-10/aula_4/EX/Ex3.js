const readline = require(`readline-sync`);


function calcularDesconto(precoOriginal){
    return precoOriginal * 0.85;
}
const estoque = [

    {Nome: "Monitor", preco: 800},
    {Nome : "teclado", preco:150},
    {Nome: "Mouse", preco: 80}

];

console.log("===Tabela de Precos Com Objetos (15% OFF)===");

for (let i = 0 ; i < estoque.length; i++){

    let precoComDesconto = calcularDesconto(estoque[i].preco);



    console.log(`${estoque[i].Nome}:`);
    console.log(` De: R$ ${estoque[i].preco.toFixed(2)}`);
    console.log(` Por: R$ ${precoComDesconto.toFixed(2)}\n`)
}