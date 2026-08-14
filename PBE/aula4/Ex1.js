const readline = require ('readline-sync');


function converterFahrenheit (celsius){
    let Fahrenheit = (celsius  *9/5 )+ 32;
    return Fahrenheit
}


const TempC= readline.questionFloat("Digite a temperatura em Celsius: ");

const  TempF = converterFahrenheit(TempC);


console.log(`A temperatura convertida é ${ TempF.toFixed(1)}°F`);