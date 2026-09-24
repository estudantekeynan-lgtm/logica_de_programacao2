const fs = require('fs');
const entrada = require('readline-sync');

console.log("=== CADASTRO DE FERRAMENTAL ===");
const totalItens = entrada.questionInt("Quantas ferramentas deseja cadastrar? ");
const listaFerramentas = [];

for (let i = 0; i < totalItens; i++) {
  console.log(`\nItem ${i + 1} de ${totalItens}:`);
  const nome = entrada.question("Nome da ferramenta: ");
  const quantidade = entrada.questionInt("Quantidade: ");
  const custoUnitario = entrada.questionFloat("Custo unitario (R$): ");

  listaFerramentas.push({
    nome: nome,
    quantidade: quantidade,
    custoUnitario: custoUnitario
  });
}

fs.writeFileSync('ferramentas.json', JSON.stringify(listaFerramentas, null, 2));

console.log(`Sucesso: ${listaFerramentas.length} itens gravados em 'ferramentas.json'`);
