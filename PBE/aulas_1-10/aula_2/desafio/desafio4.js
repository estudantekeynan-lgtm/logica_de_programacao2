const readline = require ('readline-sync')

console.log("---Natacao---");


const idade = readline.questionInt("Quantos anos você tem? ");


if (idade >=5 && idade <=10){
    console.log("infatil");
}
else if(idade >10&& idade <18){
    console.log("juvenil");
} else if( idade>= 18 && idade <60){
    console.log("adulto");
} else if (idade >60){
    console.log("Senior")
} else{
    console.log("Você ainda é muito novo")
}

