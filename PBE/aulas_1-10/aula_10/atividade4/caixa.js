const readline = require('readline-sync')
const funcoes = require('./Calculos')


console.log("=== Mercadinho Pague mais leve Menos ===")
const nome = readline.question("Qual e o seu nome? ")
const qtd = readline.questionInt ("Qual e a quantidade? ")
const preco = readline.questionFloat ("Qual e o preco? ")


const total = funcoes.calcularTotal(qtd,preco)

console.log(`${funcoes.GerarCupom(nome,total)}`)

