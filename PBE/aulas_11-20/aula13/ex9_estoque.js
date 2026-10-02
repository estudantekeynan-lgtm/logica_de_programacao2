const fs = require('fs');
const readline = require('readline-sync');

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

const codigo = Number(
    readline.question("Informe o código do material: ")
);

let encontrado = false;

materiais.forEach(material => {

    if (material.codigo === codigo) {

        encontrado = true;

        console.log(`Material: ${material.descricao}`);
        console.log(`Quantidade atual: ${material.quantidade}`);

        const novaQuantidade = Number(
            readline.question("Informe a nova quantidade: ")
        );

        
        fs.writeFileSync(
            "materiais_backup.json",
            JSON.stringify(materiais, null, 2)
        );

        
        material.quantidade = novaQuantidade;

        
        fs.writeFileSync(
            "materiais.json",
            JSON.stringify(materiais, null, 2)
        );

        console.log("Estoque atualizado com sucesso!");
    }
});

if (!encontrado) {
    console.log("Material não encontrado.");
}