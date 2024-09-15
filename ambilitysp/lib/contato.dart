import 'package:url_launcher/url_launcher.dart';

class Contato {
  final String telefone = 'Ibama: 0800 618080';
  final String telefone2 = 'Orgão estadual litoraneo: (13)3344-9400';
  final String Tel1 = 'tel:11962649955';
  final String Endereco;
  final String Email =  'svmagtpae@prefeitura.sp.gov.br';

  Contato( this.Endereco);

  void redirecionamentoTel() async{

    if (await canLaunchUrl(Uri.parse(Tel1))) {
      await launchUrl(Uri.parse(Tel1));
    } else {
      throw 'Não foi Possivel ligar para $Tel1';
    }

  }
   void redirecionamentoEmail() async{

     final Uri params = Uri(
      scheme: 'mailto',
      path: Email,
    );
    String url = params.toString();
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi Possivel mandar email para $url';
    }

  }
}