import 'terminal_utils.dart';
import 'dart:math';
void main(){
  // Solicita e lê o número de linhas da matriz
  int? linhas = int.tryParse(syncPrompt('Digite o número de linhas da matriz:'))!;

  // Solicita e lê o número de colunas da matriz
  int? colunas = int.tryParse(syncPrompt('Digite o número de colunas da matriz:'))!;

  // Gera e imprime a matriz aleatória
  List<List<int>> matriz = gerarMatrizAleatoria(linhas, colunas);
  imprimirMatriz(matriz);

}

// Função para gerar uma matriz aleatória
List<List<int>> gerarMatrizAleatoria(int linhas, int colunas) {
  Random random = Random();
  // Inicializa a matriz com as dimensões especificadas, preenchida com zeros
  List<List<int>> matriz = List.generate(linhas, (_) => List.filled(colunas, 0));

  // Preenche a matriz com números aleatórios entre 0 e 99
  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      matriz[i][j] = random.nextInt(100); // Gera um número aleatório entre 0 e 99
    }
  }

  return matriz;
}

// Função para imprimir a matriz
void imprimirMatriz(List<List<int>> matriz) {
  print('\nMatriz gerada:');
  // Itera sobre cada linha da matriz e a imprime
  for (List<int> linha in matriz) {
    print(linha);
  }
}
