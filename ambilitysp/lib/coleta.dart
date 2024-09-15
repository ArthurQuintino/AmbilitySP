class Localcoleta {
  final int id_coleta;
  final String endereco;
  String disponivel = '';

  Localcoleta(this.id_coleta, this.endereco);

  String disponibilidade () {
    final dataAgora = DateTime.timestamp();
    final horaAgora = dataAgora.hour;
    if(horaAgora > 7 && horaAgora < 13){
      disponivel = 'Disponivel';
    }else{
      disponivel = 'Não Disponivel';
    }
    return disponivel;
  }
}
