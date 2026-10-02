const fs = require('fs')
const equipamentos =[
        {nome:"Torno",setor:"Mecanica",status:"Operando"},
        {nome:"CNC",setor:"Mecanica",status:"Alerta"},
        {nome:"Lima",setor:"Ferramentaria",status:"Operando"}
]

const GravarDados = JSON.stringify(equipamentos,null,2)
const nomeArquivo = "equipamentos.json"

fs.writeFileSync(nomeArquivo,GravarDados);

console.log(`Arquivos gravados com sucesso!\n veja o arquivo ${nomeArquivo}`)

