import 'dart:io';
import 'ap1.dart';
import 'ap2.dart';
import 'ap3.dart';
import 'terminal_utils.dart';

void main() {
  while (true) {
    print('Escolha um programa:');
    print('1. Calcular Hipotenusa:');
    print('2. Converter numero:');
    print('3. Calcular Raizes:');
    print('0. Sair');

    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        double cateto1 = double.tryParse(
            syncPrompt('Digite o comprimento do primeiro cateto:'))!;
        double cateto2 = double.tryParse(
            syncPrompt('Digite o comprimento do segundo cateto:'))!;
        calcularHipotenusa(cateto1, cateto2);
        break;
      case '2':
        imprimirNumeroVariantes();
        break;
      case '3':
        calcularRaizes();
        break;
      case '0':
        exit(0);
      default:
        print('Opção inválida, tente novamente.');
    }
  }
}
