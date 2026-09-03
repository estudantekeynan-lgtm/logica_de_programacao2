


function CalcularBase_KM (KM){
    return KM * 2.10
}


function CalcularSeguro(valor_carga){
    return valor_carga * 1.01
}

function prazo (tempo_entrega){
    if (tempo_entrega <100){
        return "1 dia util"
    } else{
        return "3 a 5 dias uteis"
    }
}


module.exports ={
    CalcularBase_KM,
    CalcularSeguro,
    prazo
}