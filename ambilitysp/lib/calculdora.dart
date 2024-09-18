class calculadoraGanhos{
  final String materiais;
  late double kilos;
  final double cotacao;
  late double resultado;

  calculadoraGanhos(this.materiais, this.cotacao);

  List<calculadoraGanhos> calculadoraGanho = [
    calculadoraGanhos("Borracha", 3.0),
    calculadoraGanhos("Plastico", 4.0),
    calculadoraGanhos("Aluminio", 6.0)
  ];
}

class CalculdoraCarbono{
  final String materiais;
  final double co2;
  late double kilos;
  late double resultado;

  CalculdoraCarbono(this.materiais,this.co2);

  List<CalculdoraCarbono> calculadoraCarb = [
    CalculdoraCarbono("borracha", 5.0),
    CalculdoraCarbono("Plastico", 6.0),
    CalculdoraCarbono("Aluminio", 7.0)
  ];
}
