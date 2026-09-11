const readline = require('readline-sync');

const pecasCiclo = readline.questionInt("Quantas pecas sao fabricas por ciclo?: ");

for(let i = 1; i<11;i++){
    console.log(`ciclo ${i  }: ${i * pecasCiclo} pecas`)
}