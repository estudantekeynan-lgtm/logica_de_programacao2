const fs = require('fs');

const dados = fs.readFileSync('equipamentos.json', 'utf8');

const equipamentos = JSON.parse(dados);

let totalParados = 0;

console.log('=== EQUIPAMENTOS PARADOS ===');

equipamentos.forEach(equipamento => {

    if (equipamento.status !== 'Operando') {
        console.log(`${equipamento.nome} - ${equipamento.setor}`);
        totalParados++;
    }

});

console.log(`Total de equipamentos parados: ${totalParados}`);