const readline = require('readline-sync')


const listaVisitantes = [

]

while (true){
    const pergunta = readline.keyInYN("Voce deseja cadastrar um novo visitante?")

    if(pergunta ===false){
        console.log("Visitantes registrados hoje: \n")
        console.log(listaVisitantes)
        break

    } else if(pergunta ===true){
        const nome = readline.question("Qual é o seu nome?: ")
        const empresa = readline.question("Qual é a empresa? ")
        const organizacao = (`nome:   ${nome } |     empresa:  ${empresa} |`)
        listaVisitantes.push(organizacao)
    }else{
        console.log("Erro digite somente [y/n]")
    }
}