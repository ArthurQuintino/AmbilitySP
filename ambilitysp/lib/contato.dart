import 'package:url_launcher/url_launcher.dart';

class Contato {
  final String telefone;
  final String telefone2;
  final String Endereco;
  final String Endereco2 = 'https://maps.app.goo.gl/f9FoNe7cxbEpWuvN8';
  final String Email;

/*final String telefone = 'Ibama: 0800 618080';
  final String telefone2 = 'Orgão estadual litoraneo: (13)3344-9400';
  final String Tel1 = 'tel:11962649955';
  final String Endereco;
  final String Email = 'svmagtpae@prefeitura.sp.gov.br'; */

  Contato(this.telefone, this.telefone2, this.Endereco, this.Email);

  void redirecionamentoTel() async {
    if (await canLaunchUrl(Uri.parse(telefone))) {
      await launchUrl(Uri.parse(telefone));
    } else {
      throw 'Não foi Possivel ligar para $telefone';
    }
  }

  void redirecionamentoEmail() async {
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

  void redirecionamentoMaps() async {
    if (await canLaunchUrl(Uri.parse(Endereco2))) {
      await launchUrl(Uri.parse(Endereco2));
    } else {
      throw 'Não foi Possivel carregar a localização $Endereco2';
    }
  }
}
