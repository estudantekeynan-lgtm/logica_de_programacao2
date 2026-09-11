const readline = require('readline-sync');
const funcoes = require('./manutencao');


const nome = readline.question("Qual e o nome da maquina?: ");
const tempoTrabalho = readline.questionFloat("Quantas horas foram trabalhadas?: ");
const Pecas = readline.questionFloat("Qual foi o valor das pecas?: ");
const meses = readline.questionFloat("Quanto tempo desde a ultima revisao?: ");



console.log("---Relatorio final ---");

const precosTrabalho = funcoes.calcularMaoObra(tempoTrabalho);

const valortotal = funcoes.calcularTotal(Pecas,precosTrabalho);

const garantia = funcoes.garantia(meses);

console.log(`Nome da maquina: ${nome} \nPreco por mao de obra: ${precosTrabalho} \n Preco Total com pecas: ${valortotal} \n Status do produto: ${garantia}`)









