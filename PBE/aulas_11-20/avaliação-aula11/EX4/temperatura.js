const readline = require('readline-sync');



const temp = readline.questionFloat("Qual e a temperatura da maquina?: ");

 if (temp <=60){
    console.log(`temperatura: ${temp}   Status: NORMAL ✅`);
}else if(temp>60 && temp <=80){
    console.log(`temperatura: ${temp}   Status: Atencao ❗❗❗`)
}else{
    console.log(`temperatura: ${temp}  Status: CRITICO ⚠️⚠️⚠️`)
}

