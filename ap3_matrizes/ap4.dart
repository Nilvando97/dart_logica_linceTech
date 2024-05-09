import 'terminal_utils.dart';
import 'dart:io';

void main() {
  int? m1 = int.tryParse(syncPrompt('Digite o número de linhas da primeira matriz:'))!;
  int? n1 = int.tryParse(syncPrompt('Digite o número de colunas da primeira matriz:'))!;
  int? m2 = int.tryParse(syncPrompt('Digite o número de linhas da segunda matriz:'))!;
  int? n2 = int.tryParse(syncPrompt('Digite o número de colunas da segunda matriz:'))!;

  // Verifica se é possível multiplicar as matrizes
  if (n1 != m2) {
    print(
        'Erro: O número de colunas da primeira matriz deve ser igual ao número de linhas da segunda matriz.');
    return;
  }

  // Lê as duas matrizes
  List<List<int>> matriz1 = lerMatriz(m1, n1, 'primeira');
  List<List<int>> matriz2 = lerMatriz(m2, n2, 'segunda');

  // Calcula o produto das duas matrizes
  List<List<int>> resultado = multiplicarMatrizes(matriz1, matriz2);

  // Imprime as matrizes originais e a matriz produto
  print('Matriz 1:');
  imprimirMatriz(matriz1);
  print('Matriz 2:');
  imprimirMatriz(matriz2);
  print('Matriz Produto:');
  imprimirMatriz(resultado);
}

// Função para ler uma matriz do usuário
List<List<int>> lerMatriz(int linhas, int colunas, String nome) {
  List<List<int>> matriz = [];
  for (int i = 0; i < linhas; i++) {
    stdout.write(
        'Digite os valores da linha ${i + 1} da matriz $nome separados por espaços: ');
    List<int> linha = [];
    String entrada = stdin.readLineSync()!;
    List<String> valores = entrada.split(' ');
    for (String valor in valores) {
      linha.add(int.parse(valor));
    }
    // Verifica se o número de elementos na linha está correto
    if (linha.length != colunas) {
      print('Erro: Número incorreto de elementos na linha.');
      return lerMatriz(linhas, colunas, nome);
    }
    matriz.add(linha);
  }
  return matriz;
}

// Função para multiplicar duas matrizes
List<List<int>> multiplicarMatrizes(
    List<List<int>> matriz1, List<List<int>> matriz2) {
  int m1 = matriz1.length;
  int n1 = matriz1[0].length;
  int m2 = matriz2.length;
  int n2 = matriz2[0].length;

  List<List<int>> resultado = List.generate(m1, (_) => List.filled(n2, 0));

  for (int i = 0; i < m1; i++) {
    for (int j = 0; j < n2; j++) {
      for (int k = 0; k < n1; k++) {
        resultado[i][j] += matriz1[i][k] * matriz2[k][j];
      }
    }
  }

  return resultado;
}

// Função para imprimir uma matriz
void imprimirMatriz(List<List<int>> matriz) {
  for (List<int> linha in matriz) {
    print(linha.join(' '));
  }
}
