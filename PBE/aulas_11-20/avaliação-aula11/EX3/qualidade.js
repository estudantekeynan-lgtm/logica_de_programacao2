const readline = require('readline-sync');


const pesoPeca = readline.questionFloat("Qual e o peso da peca?: ");

if(pesoPeca >=95 && pesoPeca <=105){
   console.log("Peca aprovada ✅")
} else{
    console.log("Peca reprovada ❌")
}