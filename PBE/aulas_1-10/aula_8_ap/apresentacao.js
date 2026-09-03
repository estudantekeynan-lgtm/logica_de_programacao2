


// Herança
const readline = require("readline-sync");

class Usuario {
  constructor(nome) {
    this.nome = nome;
  }

  fazerLogin() {
    return `${this.nome} fez login.`;
  }
}

class Administrador extends Usuario {
  excluirUsuario() {
    return `${this.nome} excluiu um usuário.`;
  }
}

const nomeDigitado = readline.question("Digite o nome do administrador: ");

const admin = new Administrador(nomeDigitado);

console.log(admin.fazerLogin());
console.log(admin.excluirUsuario());



// Poliformismo 




class Usuario {
  exibirPermissoes() {
    return "Permissões básicas";
  }
}

class Administrador extends Usuario {
  exibirPermissoes() {
    return "Permissões completas";
  }
}

class Cliente extends Usuario {
  exibirPermissoes() {
    return "Permissões limitadas";
  }
}

function mostrarPermissoes(usuario) {
  return usuario.exibirPermissoes();
}

const administrador = new Administrador();
const cliente = new Cliente();

console.log(`O administrador possui: ${mostrarPermissoes(administrador)}`);
console.log(`O cliente possui: ${mostrarPermissoes(cliente)}`);



// Junção de ambos



class Pagamento {
  constructor(valor) {
    this.valor = valor;
  }
  pagar() { return `R$ ${this.valor} pago.`; }
}


class Pix extends Pagamento {
  pagar() { return ` Pix de R$ ${this.valor} confirmado instantaneamente!`; }
}

class Cartao extends Pagamento {
  pagar() { return ` Cartão de R$ ${this.valor} aprovado no crédito.`; }
}


const contas = [new Pix(50), new Cartao(120), new Pagamento(10)];


contas.forEach(conta => console.log(conta.pagar()));