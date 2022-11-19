import 'dart:math';

import 'package:desafio_imc/classes/pessoa.dart';
import 'package:desafio_imc/exceptions/pessoa_exceptions.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Deveria Criar Pessoa com Sucesso', () {
    //Arrange
    const expectedNome = "João";
    const expectedPeso = 70.0;
    const expectedAltura = 1.5;
    //Act
    final pessoa = Pessoa(expectedNome, expectedPeso, expectedAltura);

    //Assert
    expect(pessoa.getNome(), expectedNome);
    expect(pessoa.getPeso(), expectedPeso);
    expect(pessoa.getAltura(), expectedAltura);
  });
  test('Deveria Retornar Exceção PessoaExpection', () {
    //Arrange
    const expectedException = TypeMatcher<PessoaException>();

    //Assert
    expect(() => Pessoa("", 0.0, 0.0), throwsA(expectedException));
  });

  test('Deveria Setar novo nome a pessoa', () {
    //Arrange
    const expectedNewNome = "Pedro";
    final pessoa = Pessoa("João", 50, 1.5);
    //Act
    pessoa.setNome(expectedNewNome);

    expect(pessoa.getNome(), expectedNewNome);
  });

  test('Deveria Retornar NomeVazioException', () {
    //Arrange
    const newNome = "";
    const expectedException = TypeMatcher<NomeVazioException>();
    final pessoa = Pessoa("João", 50, 1.5);

    //Act
    expect(() => pessoa.setNome(newNome), throwsA(expectedException));
  });
  test('Deveria Retornar NomeInvalidoException', () {
    //Arrange
    const newNome = "João12";
    const expectedException = TypeMatcher<NomeInvalidoException>();
    final pessoa = Pessoa("João", 50, 1.5);

    //Act
    expect(() => pessoa.setNome(newNome), throwsA(expectedException));
  });
}
