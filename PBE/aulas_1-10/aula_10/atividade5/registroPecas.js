const readline = require('readline-sync')
const pecasDefeituosas =[

]

const pecas = readline.questionInt("Quantas pecas defeituosas foram encontra? ")


for ( let i = 0; i <pecas; i++){
   const numeroSerie = readline.questionInt(`Qual e o numero da serie da peca ${i +1}? `);
    pecasDefeituosas.push(numeroSerie);
    
    
    
}

console.log(`Total de pecas: ${[pecas]}\n Numeros de serie: ${pecasDefeituosas}`)
