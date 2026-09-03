function calcularOrcamento(precoPeca, horas_trabalho){
    const valor_hora  = 85.00;
    const totalMaoDeObra = horas_trabalho * valor_hora
    return precoPeca + totalMaoDeObra
}
function vereficarGarantia(meses){
    if (meses <=3){
        return "Dentro da garantia";
    } else {
        return "garantia expirada";
    }

}


function calcularDesconto(valorTotal){
    return valorTotal * 0.95;
}

module.exports = {
    calcularOrcamento,
    vereficarGarantia,
    calcularDesconto
}    