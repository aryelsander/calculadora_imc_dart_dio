import 'package:desafio_imc/utils/helper_utils.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test(
      'Deveria retornar verdadeiro para string sem numero ou caractere especial',
      () {
    //Arrange
    const exemplo = "asddsfsgaga";
    const expected = true;
    //Act
    final result = HelperUtils.somenteNomeEspacos(exemplo);
    //Assert
    expect(result, expected);
  });
  test('Deveria retornar falso para string com caractere especial', () {
    //Arrange
    const exemplo = "as#@da#dsfsgaga";
    const expected = false;
    //Act
    final result = HelperUtils.somenteNomeEspacos(exemplo);
    //Assert
    expect(result, expected);
  });
  test('Deveria retornar falso para string com numeros', () {
    //Arrange
    const exemplo = "as12341dsfsgaga";
    const expected = false;
    //Act
    final result = HelperUtils.somenteNomeEspacos(exemplo);
    //Assert
    expect(result, expected);
  });
}
