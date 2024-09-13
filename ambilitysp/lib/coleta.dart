
import 'dart:ffi';

class Localcoleta {
  final int id_coleta;
  final String endereco;
  late bool disponivel = false;

  Localcoleta(this.id_coleta, this.endereco);

 bool disponibilidade () {
    final dataAgora = DateTime.timestamp();
    final horaAgora = dataAgora.hour;
    if(horaAgora > 7 && horaAgora < 13){
      return disponivel = true;
    }else{
      return disponivel = false;
    }
  }
  

}
