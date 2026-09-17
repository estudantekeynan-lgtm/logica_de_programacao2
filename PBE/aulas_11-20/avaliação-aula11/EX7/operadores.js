const readline = require('readline-sync');


let Listanomes = [

]


for(i = 0; i <5; i++){
    const nome = readline.question(`Qual e o nome ${i+1}?: `)
   

    const organizacao = (`${i +1} - ${nome}`)
     Listanomes.push(organizacao);

}

console.log("--- Relatorio da empresa ---")

console.log(`  ${Listanomes.join(" | ")}`)


// Professor não consegui usar o .length, organizei de outra forma