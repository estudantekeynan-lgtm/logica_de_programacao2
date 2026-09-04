const readline = require ('readline-sync')

const nome = readline.question("Qual é o seu nome? ");
const idade= readline.questionInt("Em que ano você nasceu? ");
const calculo_idade = 2026 - idade

if (calculo_idade >=16  ){
    console.log(`muito bem ${nome} voto computado`);
} else{
    console.log(`desculpe ${nome} você não tem idade suficiente para votar `)
}