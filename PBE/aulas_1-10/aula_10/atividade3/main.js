const readline = require('readline-sync')
const funcoes = require('./sensor')

const temperatura = readline.questionFloat("Qual é a temperatura da caldeira? ")

const umidade = readline.questionFloat("Qual é a umidade do ar?  ")

console.log(funcoes.checarTemp(temperatura))
console.log(funcoes.checarUmi(umidade))



