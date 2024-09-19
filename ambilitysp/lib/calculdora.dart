class calculadoraGanhos {
  final String materiais;
  late double kilos;
  final double cotacao;
  late double resultado;
  calculadoraGanhos(this.materiais, this.cotacao);
}

class CalculdoraCarbono {
  final String materiais;
  final double co2;
  late double kilos;
  late double resultado;

  CalculdoraCarbono(this.materiais, this.co2);
}
