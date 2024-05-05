import 'terminal_utils.dart';

void imprimirNumeroVariantes() {
  int? numero = int.tryParse(syncPrompt('Digite um número para converter-lo'))!;

  String binario = numero.toRadixString(2);

  String octal = numero.toRadixString(8);

  String hexa = numero.toRadixString(16);

  print('Seu número: ${numero}');

  print('------- Convertido -------');

  print('Número binário: ${binario}');

  print('Número octal: ${octal}');

  print('Número hexadecimal: ${hexa}');
}

void main() {
  imprimirNumeroVariantes();
}
