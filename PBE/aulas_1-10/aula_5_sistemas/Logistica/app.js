const readline = require('readline-sync');


const produto = readline.question("Qual produto?: ");

const distancia = readline.questionFloat("Qual a distancia?: ");

const valorProduto = readline.questionFloat("Qual é o valor do produto?: ");



const calcularFrete = require('./calculadoraFrete');


const valorFrete = calcularFrete.CalcularBase_KM(distancia);

const TempoEntrega = calcularFrete.prazo(distancia);

const ValorSeguro = calcularFrete.CalcularSeguro(valorProduto);
const ValorTotal = ValorSeguro + valorFrete



console.log(`--- Relatorio Final ---`)
console.log(`Voce comprou o produto: ${produto}`);
console.log(`O Frete foi de: ${valorFrete}R$`);
console.log(`Valor do produto com o seguro adicionado foi de: ${ValorSeguro} R$ `);
console.log(`O prazo de entrega e: ${TempoEntrega} dias`);
console.log(`E o valor total a se pagar e de: ${ValorTotal} R$.`)


//sla