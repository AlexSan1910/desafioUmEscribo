import 'dart:io';

void main() {
  var numeroCinco = 5;
  var numeroTres = 3;
  var lista = [];
  var somaTotal = 0;
  int numero = 0;

  print("Digite por favor um numero inteiro?");
  String? intNumeroUsuario = stdin.readLineSync();
  if (intNumeroUsuario != null) {
    try {
      numero = int.parse(intNumeroUsuario);
      for (int i = 1; i < numero; i++) {
        if (i % numeroCinco == 0 || i % numeroTres == 0) {
          lista.add(i);
          somaTotal += i;
        }
      }
      print("A soma de todos os numeros divisiveis por 3 ou 5 é $somaTotal");
      print("E os seu respectvos numeros divisiveis por 3 ou 5 são $lista");
    } catch (exception) {
      print(
          "O valor digitado não corresponde a um numero inteiro, por favor digite um numero inteiro");
    }
  }
  //int? numeroUsuario = int.parse(stdin.readLineSync()!);
}
