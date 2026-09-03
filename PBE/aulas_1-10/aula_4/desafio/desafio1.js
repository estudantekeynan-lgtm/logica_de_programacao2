const readline = require('readline-sync');

console.log("---Sistema de aposentadoria ---");


const nome = readline.question("Qual é o seu nome?: ");

const idade = readline.questionInt("Quantos anos você tem?: ");

const tempo_contribuicao = readline.questionInt("Quanto tempo de contribuicao voce tem?: ");



if (idade >=65 || tempo_contribuicao >=30){
    console.log(`Parabens ${nome} voce ja pode se aposentar`);
} else{
    console.log(`Desculpe ${nome}, mas voce ainda não pode se aposentar`);
}