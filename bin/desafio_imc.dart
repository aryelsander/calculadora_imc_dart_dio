import 'package:desafio_imc/classes/calculadora_imc.dart';
import 'package:desafio_imc/classes/pessoa.dart';
import 'package:desafio_imc/utils/helper_utils.dart';

void main(List<String> arguments) {
  CalculadoraIMC calculadoraIMC = CalculadoraIMC();

  final nomePessoa = HelperUtils.leEntradaNomeValido("Digite o seu nome: ",
      "Nome inválido, ele não pode ser vazio, nem conter números ou caracteres especiais");
  final pesoPessoa = HelperUtils.leEntradaDouble(
      "Digite o seu peso em Kgs: ", "O peso precisa ser maior ou igual a 1",
      valorMinimo: 1);
  final alturaPessoa = HelperUtils.leEntradaDouble(
      "Digite a sua altura em metros: ",
      "A sua altura precisa ser maior ou igual a 0.1",
      valorMinimo: 0.1);
  print("Seus dados");
  var pessoa = Pessoa(nomePessoa, pesoPessoa, alturaPessoa);
  print(pessoa);
  print("Resultado");
  print(CalculadoraIMC().calcularIMC(pessoa).value);
}
