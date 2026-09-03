const readline = require("readline-sync")

const numero = readline.questionInt("Qual numero voce deseja descubrir a tabuada? ");

for(let i=1 ;i<=10;i++ ){
    console.log(`${numero} x ${i} = ${numero * i}`);
}