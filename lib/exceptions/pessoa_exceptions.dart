class PessoaException implements Exception {
  String error() => "Não é possivel criar a classe Pessoa";
}

class NomeVazioException implements Exception {
  String error() => "Não é possível criar um nome vazio";
}

class NomeInvalidoException implements Exception {
  String error() => "Não Inválido, ele só pode conter letras e números";
}

class PesoInvalidoException implements Exception {
  String erro() => "Peso inválido, precisa ser maior que 0";
}

class AlturaInvalidaException implements Exception {
  String erro() => "Altura inválida, precisa ser maior que 0";
}
