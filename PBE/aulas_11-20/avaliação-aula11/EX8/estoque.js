const readline = require('readline-sync');

let produtos = [
    
    
]



for(i = 1; i<4;i++){
    const nomeDigitado = readline.question(`Nome do produto ${i}: `)
    const qtdDigitada = readline.questionInt(`Quantidade do produto ${i}: `)
    const estoqueMin = 20

produtos.push({
    nome: nomeDigitado,
    quantidade: qtdDigitada,
    estoque: estoqueMin
    
})
if(estoqueMin>qtdDigitada){
    console.log(`Repor estoque do produto: ${nomeDigitado}`)
}else{
    console.log(`Estoque ok do produto ${nomeDigitado}`)
}

}

