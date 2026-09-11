const readline = require('readline-sync');

function calcularEficiencia(real,prevista){
   return (real/prevista) *100
}

function ClassificarEficiencia(percentual){
    if (percentual>=90){
        return ("Meta atingida")
    } else if(percentual>70&& percentual<90){
        return ("Atencao!")
    }else{
        return ("Abaixo da meta")
    }
}




const real = readline.questionFloat("Qual foi a producao real? ")
const prevista = readline.questionFloat("Qual foi a meta prevista? ")


const resultado = calcularEficiencia(real,prevista);
// const porcentagem = ClassificarEficiencia

console.log("--- relatorio ---")
console.log(`A produção real foi de: ${real} e  a prevista de ${prevista}`)

console.log(`Resultado: ${ClassificarEficiencia(resultado)}`)