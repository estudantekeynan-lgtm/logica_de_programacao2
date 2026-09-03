const readline = require ('readline-sync')

console.log("---Posto de gasolina---");

const gasolina = readline.questionFloat("Qual é o preco da gasolina? ");
const etanol = readline.questionFloat("Qual é o preco do etanol? ");

const calculo = etanol/gasolina


if (calculo >0.70 ){
    console.log("Abasteca com gasolina");
} else{
    console.log("Abasteca com etanol")
}

