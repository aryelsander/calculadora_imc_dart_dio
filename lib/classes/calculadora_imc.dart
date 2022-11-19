import 'package:desafio_imc/classes/pessoa.dart';
import 'package:desafio_imc/enums/classificacao_imc_enum.dart';

class CalculadoraIMC {
  ClassificacaoIMC calcularIMC(Pessoa pessoa) {
    final imc = pessoa.getPeso() / (pessoa.getAltura() * 2);
    if (imc < 16) {
      return ClassificacaoIMC.magrezaGrave;
    } else if (imc >= 16 && imc < 17) {
      return ClassificacaoIMC.magrezaModerada;
    } else if (imc >= 17 && imc < 18.5) {
      return ClassificacaoIMC.magrezaLeve;
    } else if (imc >= 18.5 && imc < 25) {
      return ClassificacaoIMC.saudavel;
    } else if (imc >= 25 && imc <= 30) {
      return ClassificacaoIMC.sobrepeso;
    } else if (imc >= 30 && imc < 35) {
      return ClassificacaoIMC.obesidadeGrau1;
    } else if (imc >= 35 && imc < 40) {
      return ClassificacaoIMC.obesidadeGrau2;
    } else {
      return ClassificacaoIMC.obesidadeGrau3;
    }
  }
}
