import 'terminal_utils.dart';
import 'dart:io';

void main() {
  // Solicita e lê o número de linhas da matriz
  int? linhas =
      int.tryParse(syncPrompt('Digite o número de linhas da matriz:'))!;

  // Solicita e lê o número de colunas da matriz
  int? colunas =
      int.tryParse(syncPrompt('Digite o número de colunas da matriz:'))!;
  // Cria a matriz vazia
  List<List<int>> matriz =
      List.generate(linhas, (_) => List.filled(colunas, 0));

  // Preenche a matriz com os valores informados pelo usuário
  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      print('Digite o valor para a posição [$i][$j]:');
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Imprime a matriz gerada
  print('\nMatriz gerada:');
  for (List<int> linha in matriz) {
    print(linha);
  }
}
