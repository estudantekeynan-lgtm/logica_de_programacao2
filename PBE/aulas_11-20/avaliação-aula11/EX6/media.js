const readline = require('readline-sync');

let acumular = 0

for(let i = 0;i<5; i++){
   
    let valor = readline.questionFloat(`Qual e o valor ${i +1}? `)
    
   acumular = valor + acumular
    
    
    
}   

console.log(`A media dos valores sao: ${acumular/5}`)