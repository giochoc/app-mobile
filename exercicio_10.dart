import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int numeroSecreto = random.nextInt(100) + 1; // Gera entre 1 e 100
  int? palpite;

  print("🎲 Bem-vindo ao jogo de adivinhação!");
  print("Tente adivinhar o número entre 1 e 100.\n");

  do {
    stdout.write("Digite seu palpite: ");
    palpite = int.parse(stdin.readLineSync()!);

    if (palpite != numeroSecreto) {
      String dica = palpite > numeroSecreto ? "Muito alto!" : "Muito baixo!";
      print("❌ $dica Tente novamente.\n");
    }
  } while (palpite != numeroSecreto);

  print("✅ Parabéns! Você acertou o número secreto: $numeroSecreto 🎉");
}
