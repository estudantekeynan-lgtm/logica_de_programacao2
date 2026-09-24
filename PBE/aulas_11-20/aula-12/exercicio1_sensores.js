const fs =require('fs')

const manufatura =[
   {id:1, Tipo:"Temperatura", leituraAtual: 23.5    , status:"Operando" } ,
   {id:2, Tipo:"Temperatura", leituraAtual: 27.5    , status:"Alerta" } ,
   {id:3, Tipo:"Pressap", leituraAtual: 7.5   , status:"Operando" } 
]




console.log("=== Registro de maquinas ===")
const GravarDados = JSON.stringify(manufatura, null,2)

const NomeArquivo ="maquinas.json";

fs.writeFileSync(NomeArquivo,GravarDados);


console.log("--- Gravacao concluida --- ")
console.log(`Verifique o arquivo ${NomeArquivo}`)




