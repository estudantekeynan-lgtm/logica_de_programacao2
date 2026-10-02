
const fs = require('fs');

const dados = fs.readFileSync('equipamentos.json', 'utf8');

console.log(dados);

const equipamentos = JSON.parse(dados);

equipamentos.forEach(equipamento => {
    console.log(`Equipamento: ${equipamento.nome}`);
    console.log(`Setor: ${equipamento.setor}`);

    const status = equipamento.status === 'Operando'
        ? 'OPERACIONAL'
        : 'PARADA';

    console.log(`Status: ${status}`);
    console.log('----------------------');
});

