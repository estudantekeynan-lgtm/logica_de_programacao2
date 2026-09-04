const fs = require('fs');


const maquinas = [
  { "id": 1, "nome": "Torno CNC", horasUso: 1200 },
  { "id": 2, "nome": "Fresadora", horasUso: 800 },
  { "id": 3, "nome": "Prensa Hidraulica", horasUso: 1500 },
  { "id": 4, "nome": "Corte a Laser", horasUso: 500 }
]

function salvarDados(){
  const manutencao =  maquinas.filter(m=> m.horasUso >=1000)
         const dadosTexto = JSON.stringify(manutencao,null,2)
    fs.writeFileSync ('manutencao_urgente.json', dadosTexto)

    } salvarDados()
   