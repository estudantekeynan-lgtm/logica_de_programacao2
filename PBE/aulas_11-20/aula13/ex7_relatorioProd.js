const maquinas = [
    {
        maquina: "Torno CNC",
        meta: 500,
        produzido: 475
    },
    {
        maquina: "Prensa 100T",
        meta: 300,
        produzido: 320
    },
    {
        maquina: "Cortadora",
        meta: 400,
        produzido: 280
    },
    {
        maquina: "Furadeira",
        meta: 250,
        produzido: 250
    }
];

let totalMetaAtingida = 0;

maquinas.forEach(maquina => {

    const percentual =
        (maquina.produzido / maquina.meta) * 100;

    let situacao;

    if (percentual >= 100) {
        situacao = "META ATINGIDA";
        totalMetaAtingida++;
    } else if (percentual >= 80) {
        situacao = "ATENÇÃO";
    } else {
        situacao = "ABAIXO DA META";
    }

    console.log(`Máquina: ${maquina.maquina}`);
    console.log(`Meta: ${maquina.meta}`);
    console.log(`Produzido: ${maquina.produzido}`);
    console.log(`Desempenho: ${percentual.toFixed(2)}%`);
    console.log(`Situação: ${situacao}`);
    console.log("----------------------");
});

console.log(`Máquinas que atingiram a meta: ${totalMetaAtingida}`);