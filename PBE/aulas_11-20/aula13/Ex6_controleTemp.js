const { error } = require('console');
const fs = require('fs')



const temperaturas = [
    {
        nome: "Temperatura do Forno 1",
        temperatura: 180
    },
    {
        nome: "Temperatura do Forno 2",
        temperatura: 250
    },
    {
        nome: "Temperatura do Forno 3",
        temperatura: 390
    },
    {
        nome: "Temperatura do Forno 4",
        temperatura: 300
    }
];

const GravarDados = JSON.stringify(temperaturas)

const nomeArquivo = 'temperaturas.json'

fs.writeFileSync(nomeArquivo,GravarDados)


temperaturas.forEach(Temp =>{
    try{
        if(Temp.temperatura>350){
            throw new Error (`nome: ${Temp.nome} | Ultrapassou o limite!`)
        }
        
    }catch(erro){
    console.log("\n--- INTERRUPÇÃO DE SEGURANÇA ---");
    console.log(`Motivo: ${erro.message}`);
        }
    }

)

// try{

//     temperaturas.forEach(temp =>
//     {if(temp.temperatura>350){
//             throw new error (`nome: ${temp.nome} | Ultrapassou o limite!`)
//         }
//     }
//     )
// }catch(erro){
//     console.log("\n--- INTERRUPÇÃO DE SEGURANÇA ---");
//     console.log(`Motivo: ${erro.message}`);
//         }


