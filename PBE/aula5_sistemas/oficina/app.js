const readline = require('readline-sync');


// Buscando as ferramentas no arquivo funcoesOficina.js 
// o './' significa nesta mesma pasta

const oficina = require ('./funcoesOficina');


console.log("=== Sistema de Gestao de oficina ===");


const precoPeca = readline.questionFloat("Preco peca?: ");

const horas = readline.questionInt("Horas de servico?: ");
const tempoUso = readline.questionInt("Quanto tempo de uso?: ");


// Usamos o nome 'oficina' (que damos no require) seguido do ponto .




const totalBruto = oficina.calcularOrcamento(precoPeca ,horas);
const statusGarantia = oficina.vereficarGarantia(tempoUso);
const valor_desconto = oficina.calcularDesconto(totalBruto)

console.log("--- Relatorio Final ---");
console.log(`Orcamento sem desconto  ${totalBruto} `);
console.log(`total a pagar : R$ ${valor_desconto}`);
console.log(`status veiculo : ${statusGarantia}`);
