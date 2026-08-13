const readline = require('readline-sync');
let total = 0
let preco = -1;
while( preco !==0){
     preco = readline.questionFloat("Preco: R$  ");
     if (preco !== 0){
        total+= preco;
        console.log(`O total é R$${total.toFixed(2)}`)
     } else{
        console.log(`total da compra é `)
     }
}