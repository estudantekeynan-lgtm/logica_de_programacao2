const readline = require ('readline-sync')

const nome = readline.question("Qual é o seu nome? ");
const idade = readline.questionInt("Quantos anos você tem? ");
const renda = readline.questionFloat("Renda mensal? ");
const TemImovel = readline.keyInYNStrict("Você possui algum imovel? ");


if (idade>= 18 &&(renda >= 2500 || TemImovel === true)){
    console.log(`parabens, ${nome} seu credito foi aprovado`);
} else{
    console.log(`desculpe ${nome} seu saldo foi negado`);
}

