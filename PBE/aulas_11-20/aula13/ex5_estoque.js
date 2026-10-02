const fs = require('fs')
const materiais = [
    {
        codigo: 101,
        descricao: "Aço SAE 1020",
        quantidade: 50,
        valorUnitario: 32.50
    },
    {
        codigo: 102,
        descricao: "Alumínio",
        quantidade: 30,
        valorUnitario: 25.00
    },
    {
        codigo: 103,
        descricao: "Cobre",
        quantidade: 20,
        valorUnitario: 40.00
    }
];


const GravarDados = JSON.stringify(materiais)

const nomeArquivo = 'materiais.json'


fs.writeFileSync(nomeArquivo,GravarDados);

materiais.forEach(material => {
    const total =material.quantidade * material.valorUnitario
    console.log(`Descricao: ${material.descricao}, Preco total: ${total.toFixed(2)}`)
}

)






