const readline = require('readline-sync');

const funcionarios = [
    {
        matricula: 1201,
        nome: "João Silva",
        setor: "Produção",
        cargo: "Operador"
    },
    {
        matricula: 1202,
        nome: "Carlos Souza",
        setor: "Manutenção",
        cargo: "Técnico"
    },
    {
        matricula: 1203,
        nome: "Maria Silva",
        setor: "Qualidade",
        cargo: "Inspetor"
    },
    {
        matricula: 1204,
        nome: "Ana Costa",
        setor: "RH",
        cargo: "Analista"
    }
];

const matricula = Number(
    readline.question("Informe a matricula: ")
);

let encontrado = false;

funcionarios.forEach(funcionario => {

    if (funcionario.matricula === matricula) {

        console.log("Funcionário encontrado!");
        console.log(`Nome: ${funcionario.nome}`);
        console.log(`Setor: ${funcionario.setor}`);
        console.log(`Cargo: ${funcionario.cargo}`);

        encontrado = true;
    }
});

if (!encontrado) {
    console.log("Funcionário não encontrado.");
}