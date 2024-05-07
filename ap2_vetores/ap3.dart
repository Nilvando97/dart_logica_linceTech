import 'terminal_utils.dart';
import 'dart:math';

void main() {
  somandoVetores();
}
void somandoVetores() {
  // Solicita e lê o tamanho do vetor
  int? tamanho = int.tryParse(syncPrompt('Digite o tamanho do vetor:'))!;

  // Declara os vetores v1, v2 e v3
  List<int> v1 = [];
  List<int> v2 = [];
  List<int> v3 = [];

  // Preenche os vetores v1, v2 e calcula v3
  for (int i = 0; i < tamanho; i++) {
    // Solicita e lê o valor para a posição i+1 do vetor v1
    int? numero = int.tryParse(
        syncPrompt('Digite o valor para a posição ${i + 1} do vetor v1: '))!;
    
    // Adiciona o número lido ao vetor v1
    v1.add(numero);

    // Gera um número aleatório entre 0 e 99 e adiciona ao vetor v2
    v2.add(Random().nextInt(100));

    // Calcula v3 como a soma dos valores de v1 e v2 na mesma posição
    v3.add(v1[i] + v2[i]);
  }

  // Imprime os vetores v1, v2 e v3
  print('\nVetor v1: $v1');
  print('Vetor v2: $v2');
  print('Vetor v3 (soma de v1 e v2): $v3');
}
