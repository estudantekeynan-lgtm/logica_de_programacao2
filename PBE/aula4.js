const readline = require ("readline-sync")

const nome =readline.question("Qual é o seu nome?:");
const cidade = readline.question("Digite sua cidade?: ");



console.log(`Seja bem vindo ${nome}`);
console.log(`Você mora em ${cidade}`);
const idade = Number(readline.question("Quantos anos você tem? "));
const idade_futura = idade + 5;
console.log(`Daqui a 5 anos você terá ${idade_futura} anos de idade`);
