const readline = require('readline-sync');

function calcularDesconto(precoOriginal) {
    return precoOriginal * 0.85;
}

const produtos = ["Monitor", "Teclado", "Mouse"];
const precos = [800, 150, 80];

console.log("=== Tabela de Preços com Desconto ===");

for (let i = 0; i < produtos.length; i++) {
    let precoComDesconto = calcularDesconto(precos[i]);
    
    // O console.log foi movido para DENTRO do for
    console.log(`${produtos[i]}: de R$ ${precos[i]} por R$ ${precoComDesconto.toFixed(2)}`);
}