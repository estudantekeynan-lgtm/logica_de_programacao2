const readline = require('readline-sync');
function area (largura,comprimento ){
    return largura * comprimento
}
const largura1 = readline.questionFloat("Qual é a largura do terreno 1?: ");
const comprimento1 = readline.questionFloat("Qual é o comprimento do terreno 1?: ");
const largura2 = readline.questionFloat("Qual é a largura do terreno 2?: ");
const comprimento2 = readline.questionFloat("Qual é o comprimento do terreno 2?: ");
const largura3 = readline.questionFloat("Qual é a largura do terreno 3?: ");
const compriment3 = readline.questionFloat("Qual é o comprimento do terreno 3?: ");
console.log(`A area do terreno 1 e ${area(largura1,comprimento1)}`);
console.log(`A area do terreno 2 e ${area(largura2,comprimento2)}`);
console.log(`A area do terreno 3 e ${area(largura3,compriment3)}`);