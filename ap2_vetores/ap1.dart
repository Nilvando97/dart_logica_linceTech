import 'terminal_utils.dart';
import 'dart:math';

void main() {
  vetoresAleatorios();
}
void vetoresAleatorios(){
int? numero = int.tryParse(syncPrompt('Digite um número:', Color.red))!;

  if (numero != true) {
    List<int> numerosAleatorios = [];
    Random random = Random();

    for (int i = 0; i < numero; i++) {
      numerosAleatorios.add(random.nextInt(100));
    }
    print('Vetor de números aleatórios:');
    print(numerosAleatorios);
  } else {
    print('Número inválido. Por favor, digite um número inteiro.');
  }
}