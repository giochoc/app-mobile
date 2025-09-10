import 'dart:io';

void main() {
  print("===== CARDÁPIO =====");
  print("1 - Hambúrguer     R\$ 25,00");
  print("2 - Pizza          R\$ 40,00");
  print("3 - Salada         R\$ 18,00");
  print("4 - Macarronada    R\$ 30,00");
  print("====================");

  stdout.write("Escolha uma opção (1 a 4): ");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    int opcao = int.parse(entrada);

    switch (opcao) {
      case 1:
        print("Você escolheu Hambúrguer. Valor a pagar: R\$ 25,00");
        break;
      case 2:
        print("Você escolheu Pizza. Valor a pagar: R\$ 40,00");
        break;
      case 3:
        print("Você escolheu Salada. Valor a pagar: R\$ 18,00");
        break;
      case 4:
        print("Você escolheu Macarronada. Valor a pagar: R\$ 30,00");
        break;
      default:
        print("Opção inválida.");
    }
  }
}
