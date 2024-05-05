import 'dart:io';
import 'ap1.dart';
import 'ap2.dart';
import 'ap3.dart';


void main() {
  while (true) {
    print('Escolha um programa:');
    print('1. Vetores Aleatorios:');
    print('2. Tamanho Vetor:');
    print('3. :');
    print('0. Sair');

    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        vetoresAleatorios();
        break;
      case '2':
        tamanhoVetor();
        break;
      case '3':
       
        break;
      case '0':
        exit(0);
      default:
        print('Opção inválida, tente novamente.');
    }
  }
}
