import 'dart:io';

void main() {
  double saldo = 1000.0;
  int opcao = -1;

  while (opcao != 0) {
    print("\n===== CAIXA ELETRÔNICO =====");
    print("1 - Consultar Saldo");
    print("2 - Saque");
    print("3 - Depósito");
    print("0 - Sair");
    stdout.write("Escolha uma opção: ");
    
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Opção inválida!");
      continue;
    }

    opcao = int.parse(entrada);

    switch (opcao) {
      case 1:
        print("💰 Seu saldo atual é: R\$ ${saldo.toStringAsFixed(2)}");
        break;

      case 2:
        stdout.write("Digite o valor do saque: R\$ ");
        double valorSaque = double.parse(stdin.readLineSync()!);

        if (valorSaque <= saldo) {
          saldo -= valorSaque;
          print("✅ Saque realizado com sucesso!");
        } else {
          print("❌ Saldo insuficiente!");
        }
        print("💰 Saldo atualizado: R\$ ${saldo.toStringAsFixed(2)}");
        break;

      case 3:
        stdout.write("Digite o valor do depósito: R\$ ");
        double valorDeposito = double.parse(stdin.readLineSync()!);
        saldo += valorDeposito;
        print("✅ Depósito realizado com sucesso!");
        print("💰 Saldo atualizado: R\$ ${saldo.toStringAsFixed(2)}");
        break;

      case 0:
        print("👋 Saindo do sistema. Obrigado!");
        break;

      default:
        print("⚠️ Opção inválida. Tente novamente.");
    }
  }
}
