function calcularTotal(preco,qtd){
    return preco *qtd
}


function GerarCupom (nome,total){
    return (`---Cupom final--- \nCliente: ${nome} \n Total: R$${total}`)
}

module.exports ={
    calcularTotal,
    GerarCupom
}