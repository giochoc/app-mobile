import 'dart:io';

void main() {
  stdout.write("Digite o valor do lado A: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor do lado B: ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor do lado C: ");
  double c = double.parse(stdin.readLineSync()!);

  // Verificação se os lados formam um triângulo
  if ((a + b > c) && (a + c > b) && (b + c > a)) {
    print("\n✅ Os lados formam um triângulo.");

    if (a == b && b == c) {
      print("🔺 Triângulo Equilátero (todos os lados iguais).");
    } else if (a == b || a == c || b == c) {
      print("🔺 Triângulo Isósceles (dois lados iguais).");
    } else {
      print("🔺 Triângulo Escaleno (todos os lados diferentes).");
    }
  } else {
    print("\n❌ Os valores informados NÃO formam um triângulo.");
  }
}
