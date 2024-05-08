import 'terminal_utils.dart';
import 'dart:io';

void main() {
  // Solicita ao usuário o número de linhas da matriz e converte para int
  int? linhas = int.tryParse(syncPrompt('Digite o número de linhas da matriz:'))!;

  // Solicita ao usuário o número de colunas da matriz e converte para int
  int? colunas = int.tryParse(syncPrompt('Digite o número de colunas da matriz:'))!;

  // Cria a matriz com base nas dimensões fornecidas pelo usuário
  List<List<double>> matriz = createMatrix(linhas, colunas);

  // Imprime a matriz informada pelo usuário
  print('\nMatriz informada pelo usuário:');
  printMatrix(matriz);

  // Solicita ao usuário um número real para multiplicar a matriz
  stdout.write('\nDigite um número real para multiplicar a matriz: ');
  double escalar = double.parse(stdin.readLineSync()!);

  // Multiplica a matriz pelo número real informado pelo usuário
  List<List<double>> matrizMultiplicada = multiplyMatrix(matriz, escalar);

  // Imprime a matriz original
  print('\nMatriz original:');
  printMatrix(matriz);

  // Imprime a matriz multiplicada pelo número real
  print('\nMatriz multiplicada por $escalar:');
  printMatrix(matrizMultiplicada);
}

// Função para criar a matriz com base nas dimensões fornecidas
List<List<double>> createMatrix(int linhas, int colunas) {
  List<List<double>> matriz = [];
  for (int i = 0; i < linhas; i++) {
    List<double> linha = [];
    for (int j = 0; j < colunas; j++) {
      stdout.write('Digite o valor da posição [$i][$j]: ');
      double value = double.parse(stdin.readLineSync()!);
      linha.add(value);
    }
    matriz.add(linha);
  }
  return matriz;
}

// Função para imprimir a matriz
void printMatrix(List<List<double>> matriz) {
  for (var linha in matriz) {
    print(linha.join('\t'));
  }
}

// Função para multiplicar a matriz por um número real
List<List<double>> multiplyMatrix(List<List<double>> matriz, double escalar) {
  List<List<double>> result = [];
  for (var linha in matriz) {
    List<double> novaLinha = [];
    for (var value in linha) {
      novaLinha.add(value * escalar);
    }
    result.add(novaLinha);
  }
  return result;
}