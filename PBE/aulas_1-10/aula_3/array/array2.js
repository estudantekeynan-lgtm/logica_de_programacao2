const readline = require('readline-sync');

console.log("--- Sistema de controle de Qualidade ---");
const pesos = [];
let somaTotal = 0;

const qtdPecas = readline.questionInt("Quantas pecas deseja avaliar ?");

for(let i = 0 ; i< qtdPecas;i++){
    let peso = readline.questionFloat(`digite  o peso da peca ${i + 1} (KG):`)
    pesos.push(peso);
    somaTotal+=peso;

}
const media = somaTotal/ qtdPecas

console.log("\n --- Relatorio da Auditoria ---");
console.log(`Pesos registrados : [${pesos.join("KG|")}KG]`);
console.log(`media peso do lote: ${media.toFixed(2)} KG`);

if(media>=4.8 && media <=5.2){
    console.log("status final : lote aprovado ✅");
} else{
    console.log("Status: lote Negado ❌")
}