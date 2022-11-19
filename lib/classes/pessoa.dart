import 'package:desafio_imc/exceptions/pessoa_exceptions.dart';
import 'package:desafio_imc/utils/helper_utils.dart';

class Pessoa {
  late String _nome;
  late double _peso;
  late double _altura;

  Pessoa(String nome, double peso, double altura) {
    try {
      setNome(nome);
      setPeso(peso);
      setAltura(altura);
    } catch (e) {
      throw PessoaException();
    }
  }

  void setNome(String nome) {
    if (nome.isEmpty) {
      throw NomeVazioException();
    } else if (!HelperUtils.somenteNomeEspacos(nome)) {
      throw NomeInvalidoException();
    }

    _nome = nome;
  }

  String getNome() => _nome;

  void setPeso(double peso) {
    if (peso <= 0) {
      throw PesoInvalidoException();
    }
    _peso = peso;
  }

  double getPeso() => _peso;

  void setAltura(double altura) {
    if (altura <= 0) {
      throw AlturaInvalidaException();
    }

    _altura = altura;
  }

  double getAltura() => _altura;
  @override
  String toString() {
    return {"Nome": _nome, "Peso": _peso, "Altura": _altura}.toString();
  }
}
