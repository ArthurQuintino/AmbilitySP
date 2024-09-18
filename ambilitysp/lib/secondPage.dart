import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ambilitysp/main.dart';
import 'package:ambilitysp/thirdPage.dart';
import 'package:ambilitysp/fourthPage.dart';
import 'package:ambilitysp/coleta.dart';
import 'package:ambilitysp/contato.dart';
import 'package:ambilitysp/fifthPage.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: SecondPage(),
  ));
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    Localcoleta local = Localcoleta(2, 'teste');
    String EstaDisponivel = local.disponibilidade();
    final Contato contato = Contato('tel:11944751692', 'tel:11962649955',
        'R. Delphim Moreira, 56 - Embaré, Santos', 'cfb.santos@sp.gov.br');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AmbilitySP',
              style: GoogleFonts.jetBrainsMono(
                  textStyle: const TextStyle(color: Colors.white))),
          centerTitle: true,
          backgroundColor: const Color(0xFF113C13),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF0E1A0F),
        drawer: Drawer(
            // inicio da barra lateral
            backgroundColor: const Color(0xFF172318),
            child: ListView(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              children: [
                ListTile(
                  // itens da barra lateral
                  title: Text('Opções:',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 30))),
                ),
                ListTile(
                  title: Text('Início',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(color: Colors.white))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MainApp()), // caminho para a primeira pagina
                    );
                  },
                  leading: const Image(
                    image: AssetImage('images/house.png'),
                    width: 40,
                  ),
                ),
                ListTile(
                  title: Text('Dias de coleta seletiva',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(color: Colors.white))),
                  onTap: () {}, // caminho para a segunda pagina
                  leading: const Image(
                    image: AssetImage('images/calendar.png'),
                    width: 40,
                  ),
                ),
                ListTile(
                  title: Text('Pontos de Coleta de Lixo',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(color: Colors.white))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ThirdPage()), // caminho para a Terceira pagina
                    );
                  },
                  leading: const Image(
                    image: AssetImage('images/map.png'),
                    width: 40,
                  ),
                ),
                ListTile(
                  title: Text('Como descartar seu lixo',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(color: Colors.white))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SecondPage()), // caminho para a segunda pagina
                    );
                  },
                  leading: const Image(
                    image: AssetImage('images/question.png'),
                    width: 40,
                  ),
                ),
                ListTile(
                  title: Text('Denúncias',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(color: Colors.white))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SecondPage()), // caminho para a segunda pagina
                    );
                  },
                  leading: const Image(
                    image: AssetImage('images/telephone.png'),
                    width: 40,
                  ),
                ),
                ListTile(
                  title: Text('Economia Circular',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(color: Colors.white))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const FourthPage()), // caminho para a quarta pagina
                    );
                  },
                  leading: const Image(
                    image: AssetImage('images/recicle.png'),
                    width: 40,
                  ),
                ),
                ListTile(
                  title: Text('Calculadora de Carbono',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(color: Colors.white))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const fiftyPage()), // caminho para a quarta pagina
                    );
                  },
                  leading: const Image(
                    image: AssetImage('images/co2.png'),
                    width: 40,
                  ),
                )
              ],
            )),
        body: SingleChildScrollView(
            //  scroll da pagina
            child: Center(
          child: Column(
            // coluna principal
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(27, 10, 27, 10),
                  child: Container(
                      width: largura / 1.3,
                      height: 200,
                      margin: const EdgeInsets.only(top: 25),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2E643E),
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: RichText(
                          text: TextSpan(
                              text: 'Dias de coleta seletiva:\n\n'
                                  'Região norte litorânea: todas as quintas e terças\n'
                                  'Região sul litorânea: todas as sextas e quartas\n'
                                  'Atualmente em sua Região ',
                              style: GoogleFonts.jetBrainsMono(
                                  textStyle:
                                      const TextStyle(color: Colors.white)),
                              children: <TextSpan>[
                            TextSpan(
                                text: EstaDisponivel,
                                style: GoogleFonts.jetBrainsMono(
                                    textStyle: TextStyle(
                                        color: EstaDisponivel.length > 19
                                            ? Colors.red
                                            : Colors.green,
                                        fontWeight: FontWeight.bold)))
                          ])))),

              //primeiro container, contém as informações sobre dias de coleta
              const Gap(15), // espaçamento
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 10, 27, 10),
                child: Container(
                    // container com descrição de Como descartar seu lixo corretamente
                    width: largura / 1.3,
                    height: 540,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xFF282828),
                        borderRadius: BorderRadius.circular(26)),
                    child: Column(children: [
                      Text(
                          'Como descartar seu lixo corretamente:\n\n'
                          'Voce pode descartar seu lixo seja em lixeiras publicas, na qual, a de cada cor tem seus tipos de lixo reciclaveis que são elas:\n\n',
                          style: GoogleFonts.jetBrainsMono(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 15))),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Row(
                            // linha de sustentação para a descrição de como descartar seu lixo.
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                  child: Column(
                                children: [
                                  const CircleAvatar(
                                      // para definir a figura que indica a cor da lixeira
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 0, 0),
                                      radius: 26),
                                  Text('Plastico',
                                      style: GoogleFonts.jetBrainsMono(
                                          textStyle: const TextStyle(
                                              color: Colors.white))),
                                  const Gap(30),
                                  const CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(255, 112, 255, 0),
                                      radius: 26),
                                  Text('Vidros',
                                      style: GoogleFonts.jetBrainsMono(
                                          textStyle: const TextStyle(
                                              color: Colors.white)))
                                ],
                              )),
                              Center(
                                  child: Column(
                                children: [
                                  const CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(255, 5, 0, 255),
                                      radius: 26),
                                  Text('Papeis',
                                      style: GoogleFonts.jetBrainsMono(
                                          textStyle: const TextStyle(
                                              color: Colors.white))),
                                  const Gap(45),
                                  Image.asset(
                                    'images/recicla.png',
                                    width: 50,
                                    height: 60,
                                  )
                                ],
                              )),
                              Center(
                                  child: Column(
                                children: [
                                  const CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 230, 0),
                                      radius: 26),
                                  Text('Metais',
                                      style: GoogleFonts.jetBrainsMono(
                                          textStyle: const TextStyle(
                                              color: Colors.white))),
                                  const Gap(30),
                                  const CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 153, 0),
                                      radius: 26),
                                  Text('Orgânicos',
                                      style: GoogleFonts.jetBrainsMono(
                                          textStyle: const TextStyle(
                                              color: Colors.white))),
                                ],
                              )),
                            ]),
                      ),
                    ])), //container 2 pt.1
              ),
              Container(
                width: largura,
                height: 60,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFF3E8538),
                ),
                child: Center(
                  child: Text(
                    'Denúncias Ambientais',
                    style: GoogleFonts.jetBrainsMono(
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(27, 10, 27, 10),
                  child: Container(
                      width: largura / 1.3,
                      height: 130,
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: const Color(0xFF2E643E),
                          borderRadius: BorderRadius.circular(26)),
                      child: RichText(
                          text: TextSpan(
                              text: 'Lista de Contato: \n',
                              style: GoogleFonts.jetBrainsMono(
                                  textStyle:
                                      const TextStyle(color: Colors.white)),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'Ibama:  ',
                              style: GoogleFonts.jetBrainsMono(
                                textStyle: const TextStyle(color: Colors.white),
                              ),
                            ),
                            TextSpan(
                                text: contato.telefone,
                                style: GoogleFonts.jetBrainsMono(
                                  textStyle: const TextStyle(
                                      color:
                                          Color.fromARGB(255, 135, 250, 169)),
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    contato.redirecionamentoTel();
                                  }),
                            TextSpan(
                              text: '\nOrgão estadual litoraneo:  ',
                              style: GoogleFonts.jetBrainsMono(
                                textStyle: const TextStyle(color: Colors.white),
                              ),
                            ),
                            TextSpan(
                                text: contato.telefone2,
                                style: GoogleFonts.jetBrainsMono(
                                  textStyle: const TextStyle(
                                      color:
                                          Color.fromARGB(255, 135, 250, 169)),
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    contato.redirecionamentoTel();
                                  }),
                            TextSpan(
                                text:
                                    '\nCETESB - Agência Ambiental de Santos:  ',
                                style: GoogleFonts.jetBrainsMono(
                                  textStyle:
                                      const TextStyle(color: Colors.white),
                                )),
                            TextSpan(
                                text: contato.Endereco,
                                style: GoogleFonts.jetBrainsMono(
                                    textStyle: const TextStyle(
                                        color: Color.fromARGB(
                                            255, 135, 250, 169))),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    contato.redirecionamentoMaps();
                                  }),
                            TextSpan(
                                text: '\nEmail de contato CTR Santos  ',
                                style: GoogleFonts.jetBrainsMono(
                                  textStyle:
                                      const TextStyle(color: Colors.white),
                                )),
                            TextSpan(
                                text: contato.Email,
                                style: GoogleFonts.jetBrainsMono(
                                    textStyle: const TextStyle(
                                        color: Color.fromARGB(
                                            255, 135, 250, 169))),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    contato.redirecionamentoEmail();
                                  }),
                          ])))), //terceiro container, seção de denúncias

              Container(
                  width: largura,
                  height: 110,
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color(0xFF3E8538)),
                  child: Text(
                      'Denuncie! Voce esta fazendo um favor\npara o meio ambiente e para a saúde da\npopulação!',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(
                              color: Colors
                                  .white)))), // quarto container, incentivo para denunciar crimes ambientais
              Container(
                  width: largura,
                  height: 50,
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color(0xFF1A2F1C)),
                  child: Text('copyright@2024 Alexandre e ArthurQ',
                      style: GoogleFonts.faustina(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15)))) //quinto container, "footer"
            ],
          ),
        )),
      ),
    );
  }
}
