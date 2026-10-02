const fs = require('fs');
const readline = require('readline-sync');

const manutencoes = [
    {
        id: 1,
        maquina: "Torno CNC",
        setor: "Usinagem",
        horasUso: 950,
        limiteManutencao: 1000,
        manutencaoRealizada: false
    },
    {
        id: 2,
        maquina: "Prensa 100T",
        setor: "Estamparia",
        horasUso: 500,
        limiteManutencao: 1000,
        manutencaoRealizada: false
    },
    {
        id: 3,
        maquina: "Cortadora",
        setor: "Produção",
        horasUso: 1200,
        limiteManutencao: 1000,
        manutencaoRealizada: false
    },
    {
        id: 4,
        maquina: "Furadeira",
        setor: "Usinagem",
        horasUso: 700,
        limiteManutencao: 1000,
        manutencaoRealizada: true
    }
];

try {

    let totalManutencao = 0;

    manutencoes.forEach(manutencao => {

        const horasRestantes =
            manutencao.limiteManutencao -
            manutencao.horasUso;

        let situacao;

        if (horasRestantes <= 0) {
            situacao = "MANUTENÇÃO NECESSÁRIA";
            totalManutencao++;
        } else {
            situacao = "NORMAL";
        }

        console.log(`ID: ${manutencao.id}`);
        console.log(`Máquina: ${manutencao.maquina}`);
        console.log(`Setor: ${manutencao.setor}`);
        console.log(`Horas de uso: ${manutencao.horasUso}`);
        console.log(`Horas restantes: ${horasRestantes}`);
        console.log(`Situação: ${situacao}`);

        console.log(
            `Manutenção realizada: ${
                manutencao.manutencaoRealizada
                    ? "SIM"
                    : "NÃO"
            }`
        );

        console.log("----------------------");
    });

    console.log(
        `Total de equipamentos que precisam de manutenção: ${totalManutencao}`
    );

    const id = Number(
        readline.question("Informe o ID da máquina: ")
    );

    let encontrada = false;

    manutencoes.forEach(manutencao => {

        if (manutencao.id === id) {

            encontrada = true;

            console.log(`Máquina: ${manutencao.maquina}`);

            manutencao.manutencaoRealizada = true;

            // Backup
            fs.writeFileSync(
                "manutencoes_backup.json",
                JSON.stringify(manutencoes, null, 2)
            );

            // Salvar alterações
            fs.writeFileSync(
                "manutencoes.json",
                JSON.stringify(manutencoes, null, 2)
            );

            console.log(
                "Manutenção registrada com sucesso!"
            );
        }
    });

    if (!encontrada) {
        console.log("ID não encontrado.");
    }

} catch (erro) {

    console.log("ERRO:");
    console.log(erro.message);

}