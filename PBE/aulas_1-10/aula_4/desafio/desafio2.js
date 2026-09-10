const readline = require ('readline-sync');

console.log("---Bem vindo ao gerador de parcelas---");

const valor_total = readline.questionFloat("Qual e o preco do produto?: ");

const parcelas = readline.questionInt("Quantas vezes voce deseja parcelar?: ");

const valor_mes = valor_total/ parcelas

if (parcelas <=12){


    for(let i =0; i< parcelas; i++){
        console.log(`O valor a se pagar e mes ${i +1}:R$ ${valor_mes} `)
    } 
}else{
    console.log("Desculpe o numero de parcelas e muito grande|| MAX 12")
}