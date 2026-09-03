const readline = require ('readline-sync')

console.log("---BANCO---");

const renda = readline.questionInt("Qual é a sua renda? ");
const nome = readline.keyInYNStrict("O seu nome está limpo? ");

if (renda > 2000 && nome === true){
    console.log('Emprestimo aprovado');
} else{
    console.log("Emprestimo negado");
}