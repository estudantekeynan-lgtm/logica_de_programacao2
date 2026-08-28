const readline =require('readline-sync');
const verificacao = require('./funcoes_balanca')

const sistema = true;

while (sistema){
    try{
        console.log("---Balanca---")
        let leitura = readline.question("Qual é o peso da peca: ")
        if (leitura.toLocaleLowerCase()==='sair') break;
     let resultado =   verificacao.verificarPeso(leitura)
     console.log(resultado)


        


    } catch (erro) {
        console.log(`\n⚠️  ALERTA: ${erro.message}`);
    }
}




