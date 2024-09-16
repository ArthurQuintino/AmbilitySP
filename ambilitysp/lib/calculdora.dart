class calculadora {
  final double kilos;
  final String materiais;

  calculadora(this.kilos, this.materiais);
}

class calculadoraCarbono extends calculadora {
  final double carbono;
  late double emissoesTotais;

  calculadoraCarbono(super.kilos, super.materiais, this.carbono);

  void calcularCarbono() {}
}

class calculadoraGanhos extends calculadora {
  final double cotacao;
  late double preco;

  calculadoraGanhos(super.kilos, super.materiais, this.cotacao);
}
