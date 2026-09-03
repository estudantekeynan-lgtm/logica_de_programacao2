
function verificarPeso(Leitura){
    const peso =Number(Leitura)
    if(isNaN(peso)){
        throw new  Error("Digite somente numeros ! ")
    } if (peso <100 || peso >500){
        throw new Error("Peso fora do padrao, (100g - 500g)")
    } 
        return (`Peca aprovada peso: ${Leitura}`)
    
}

module.exports ={
    verificarPeso
}




