const readline = require("readline-sync");
const nome = readline.question("Qual é o seu nome? ");
const disciplina = readline.question("Qual a disciplina você deseja descobrir a sua média? ");


const nota1 = Number(readline.question("Qual foi sua primeira nota? "));
const nota2 = Number(readline.question("Qual foi a sua segunda nota? "));
const num_faltas = Number(readline.question("Quantas vezes você faltou? "));
const nom_turma = readline.question("Qual é a sua turma?");
const ano_letivo = readline.question("Em que ano da escola você está")
const media = (nota1+nota2)/2;
const escola = readline.question("Qual escola você estuda? ");

console.log("\n --- Relatório do Aluno---");
console.log(`Aluno: ${nome}`);
console.log(`Disciplina: ${disciplina}`);
console.log(`Nota 1 = ${nota1}`);
console.log(`Nota 2 = ${nota2}`);
console.log(`A sua Média foi: ${media}`);
console.log(`Faltas: ${num_faltas}`);
console.log(`Ano letivo: ${ano_letivo}`);
console.log(`nome da turma: ${nom_turma}`);
console.log(`Ecola: ${escola}`);


console.log("---Resumo---")
console.log(`\n O aluno ${nome} estuda na escola ${escola}, é da turma ${nom_turma}, e atualmente está no ${ano_letivo}.\n  Tira exelentes notas como ${nota1} e ${nota2}, e teve uma media de ${media} na disciplina ${disciplina}.\n E teve ${num_faltas} faltas `)