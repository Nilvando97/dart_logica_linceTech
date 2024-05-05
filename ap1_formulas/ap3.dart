import 'terminal_utils.dart';
import 'dart:math';

void main() {
  calcularRaizes();
}

void calcularRaizes() {
  double? a = double.tryParse(syncPrompt('Digite o valor de a:'))!;

  double? b = double.tryParse(syncPrompt('Digite o valor de b:'))!;

  double? c = double.tryParse(syncPrompt('Digite o valor de c:'))!;

  double delta = b * b - 4 * a * c;

  double x1 = (-b + sqrt(delta)) / (2 * a);
  double x2 = (-b - sqrt(delta)) / (2 * a);

  print("As raízes da equação são: x1 = $x1 e x2 = $x2");
}
