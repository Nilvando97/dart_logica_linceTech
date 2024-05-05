import 'dart:math';
import 'terminal_utils.dart';

void main() {
  double cateto1 =
      double.tryParse(syncPrompt('Digite o comprimento do primeiro cateto:'))!;

  double cateto2 =
      double.tryParse(syncPrompt('Digite o comprimento do segundo cateto:'))!;

  double hipotenusa = calcularHipotenusa(cateto1, cateto2);

  print('A hipotenusa do triângulo é: $hipotenusa');
}

double calcularHipotenusa(double cateto1, double cateto2) {
  return sqrt(cateto1 * cateto1 + cateto2 * cateto2);
}
