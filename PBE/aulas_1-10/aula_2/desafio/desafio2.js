const readline = require ('readline-sync')

console.log("--- Promocao 10%---");
const conta = readline.questionFloat("Qual foi o valor final da conta? ");
const desconto = conta * 0.10
if (conta >= 100 ){
    
    console.log(`O valor a se pagar é de ${conta - desconto}$`);
} else{
    console.log(`o valor a se pagar é de ${conta}$`);
}