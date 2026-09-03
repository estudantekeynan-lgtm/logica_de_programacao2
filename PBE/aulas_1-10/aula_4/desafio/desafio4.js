const readline = require ('readline-sync');

const cinema = [ 
    {filme: 1, idade: 18},
    {filme: 2, idade: 15},
    {filme: 3, idade: 0}
]

const idade = readline.questionInt("Informe a idade: ")

for(let i = 0; i < cinema.length; i++){
    if (idade > cinema[i].idade){
        console.log(`Filme ${cinema[i].filme} disponivel!`)
    }
}