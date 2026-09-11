function calcularMaoObra (hora){
    return hora * 80
}

function calcularTotal(pecas,hora){
    return pecas + hora
}

function garantia(tempo){
    if(tempo > 6){
        return  ("Fora da Garantia")
    } else{
        return ("Em garantia")
    }
}
module.exports ={
    calcularMaoObra,
    calcularTotal,
    garantia
}