import 'terminal_utils.dart';

void main() {
  int? tamanho = int.tryParse(syncPrompt('Digite o tamanho do vetor:'))!;

  List<int> vetor = [];

  for (int i = 0; i < tamanho; i++) {
    int? numero = int.tryParse(syncPrompt('Digite o número ${i + 1}: '))!;

    vetor.add(numero);
  }
}
