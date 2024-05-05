import 'terminal_utils.dart';
import 'dart:math';


void main() {
  int? tamanho = int.tryParse(syncPrompt('Digite o tamanho do vetor:'))!;

  List<int> v1 = [];
  List<int> v2 = [];
  List<int> v3 = [];

   for (int i = 0; i < tamanho; i++) {
    int? numero = int.tryParse(syncPrompt('Digite o valor para a posição ${i + 1} do vetor v1: '))!;
    
    v1.add(numero);

    v2.add(Random().nextInt(100)); // Gerar número aleatório entre 0 e 99
    v3.add(v1[i] + v2[i]);
  }

  print('\nVetor v1: $v1');
  print('Vetor v2: $v2');
  print('Vetor v3 (soma de v1 e v2): $v3');
}