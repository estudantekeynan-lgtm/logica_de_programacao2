function checarTemp (temperatura){
    if (temperatura > 40){
        return ("Alerta: Caldeeira superaquecida")
    } else{
       return ("Temperatura normal (: ")
    } 
  
}

function checarUmi(umidade){
    if (umidade<20 ){
       return ("Alerta: Ar muito seco")
    } else{
        return ("Umidade Normal (:")
    }
}

module.exports = {
    checarTemp,
    checarUmi
}