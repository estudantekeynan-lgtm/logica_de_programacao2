const fs = require('fs')
const { json } = require('stream/consumers')



const sensores = [
    {codigo:1, tipo: "ultrasonico",valor:"20",unidade:"cm", status:'Operando'},
    {codigo:2, tipo: "Luminosidade",valor:"30",unidade:"lx", status:'Quebrado'},
    {codigo:3, tipo: "Temperatura",valor:"10",unidade:"°C", status:'Operando'},
    {codigo:4, tipo: "Proximidade",valor:"50",unidade:"mm", status:'Operando'},
    {codigo:5, tipo: "Pressão",valor:"15",unidade:"bar", status:'Quebrado'}
]

const GravarDados = JSON.stringify(sensores,null,2)

const nomeArquivo = "monitoramento.json"
fs.writeFileSync(nomeArquivo,GravarDados)



const dados = fs.readFileSync('monitoramento.json','utf-8')
console.log(dados)


console.log("=== Sensores em alerta ===")
let contador = 0

sensores.forEach(sensor =>{
    if(sensor.status !== 'Operando'){
        console.log(`${sensor.tipo}`); contador ++
    }
})