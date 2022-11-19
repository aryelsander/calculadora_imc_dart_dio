import 'package:desafio_imc/classes/calculadora_imc.dart';
import 'package:desafio_imc/classes/pessoa.dart';
import 'package:desafio_imc/enums/classificacao_imc_enum.dart';
import 'package:test/test.dart';

void main() {
  late CalculadoraIMC calculadoraIMC;
  setUp(() {
    calculadoraIMC = CalculadoraIMC();
  });
  test('Deveria Retornar Magreza Grave', () {
    //Arrange
    const expected = ClassificacaoIMC.magrezaGrave;
    final pessoa = Pessoa("adas", 50, 2.0);

    //Act
    final result = calculadoraIMC.calcularIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deveria Retornar Magreza Moderada', () {
    //Arrange
    const expected = ClassificacaoIMC.magrezaModerada;
    final pessoa = Pessoa("adas", 65, 2.0);

    //Act
    final result = calculadoraIMC.calcularIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deveria Retornar Magreza Leve', () {
    //Arrange
    const expected = ClassificacaoIMC.magrezaLeve;
    final pessoa = Pessoa("adas", 70, 2.0);

    //Act
    final result = calculadoraIMC.calcularIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deveria Retornar Saudavel', () {
    //Arrange
    const expected = ClassificacaoIMC.saudavel;
    final pessoa = Pessoa("adas", 90, 2.0);

    //Act
    final result = calculadoraIMC.calcularIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deveria Retornar Sobrepeso', () {
    //Arrange
    const expected = ClassificacaoIMC.sobrepeso;
    final pessoa = Pessoa("adas", 120, 2.0);

    //Act
    final result = calculadoraIMC.calcularIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deveria Retornar Obesidade Grau 1', () {
    //Arrange
    const expected = ClassificacaoIMC.obesidadeGrau1;
    final pessoa = Pessoa("adas", 135, 2.0);

    //Act
    final result = calculadoraIMC.calcularIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deveria Retornar Obesidade Grau 2', () {
    //Arrange
    const expected = ClassificacaoIMC.obesidadeGrau2;
    final pessoa = Pessoa("adas", 155, 2.0);

    //Act
    final result = calculadoraIMC.calcularIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deveria Retornar Obesidade Grau 3', () {
    //Arrange
    const expected = ClassificacaoIMC.obesidadeGrau3;
    final pessoa = Pessoa("adas", 180, 2.0);

    //Act
    final result = calculadoraIMC.calcularIMC(pessoa);

    //Assert
    expect(result, expected);
  });
}
