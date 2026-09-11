const converter = require('./conversor')
const readline = require('readline-sync')

console.log("---Casa de cambio---")

const valorDolar = readline.questionFloat("Qual e o valor em dolar?: ")

const valorReal = converter.conversor(valorDolar)


console.log(`O valor é de ${valorReal} reais`)

