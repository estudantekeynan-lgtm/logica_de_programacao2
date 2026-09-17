const readline = require('readline-sync');


const material = readline.question("Qual material foi utilizado?: ");


const qtd = readline.questionFloat("Qual foi a quantidade comprada?: ");


const precoUni = readline.questionFloat("Qual é o preco por unidade?: ",);


const resultado = qtd * precoUni




console.log(`=== Resumo da compra === \n Material Comprado: ${material} \n Quantidade: ${qtd} \n Preco por unidade: R$${precoUni} \n Total: R$${resultado}`)