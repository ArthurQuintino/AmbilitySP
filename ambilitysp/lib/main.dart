import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'package:ambilitysp/secondPage.dart';
import 'package:ambilitysp/thirdPage.dart';
import 'package:ambilitysp/fourthPage.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final altura =
        MediaQuery.of(context).size.height; // contador de altura da tela
    final largura =
        MediaQuery.of(context).size.width; // contador de largura da tela

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              // barra superior
              title: Text('AmbilitySP',
                  style: GoogleFonts.jetBrainsMono(
                      textStyle: const TextStyle(color: Colors.white))),
              centerTitle: true,
              backgroundColor: const Color(0xFF113C13),
              iconTheme: const IconThemeData(color: Colors.white),
            ),
            backgroundColor:
                const Color(0xFF0E1A0F), // cor geral de fundo do aplicativo
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
                      onTap: () {},
                      leading: const Image(
                        image: AssetImage('images/house.png'),
                        width: 40,
                      ),
                    ),
                    ListTile(
                      title: Text('Dias de coleta seletiva',
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
                  ],
                )),
            body: SingleChildScrollView(
                // adiciona scroll na aplicação
                child: Center(
                    // alinha no centro todo o body
                    child: Column(children: [
              // coluna principal do aplicativo
              Container(
                // titulo principal
                width: largura,
                padding: const EdgeInsets.fromLTRB(27, 30, 27, 0),
                child: Text('Bem vindo! proteja o meio ambiente com a gente!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.jetBrainsMono(
                        textStyle: const TextStyle(color: Colors.white))),
              ),
              const Gap(20), // espaçamento
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                child: Container(
                    // container com imagens da parceria entre o estado de são paulo e a empresa.
                    width: largura * 1,
                    height: altura * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/ambility.jpg',
                            width: largura * 0.37, height: altura * 0.2),
                        Image.asset(
                          'images/sp.jpg',
                          width: largura * 0.37,
                          height: altura * 0.2,
                        )
                      ],
                    )),
              ),
              const Gap(20), // espaçamento
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                child: Text(
                    // texto descritivo
                    'O litoral paulistano vem sofrendo com o descarte irregular de lixo nos Mares, acabando com a nossa biodiversidade',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.jetBrainsMono(
                        textStyle: const TextStyle(color: Colors.white))),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                child: Column(
                  // container com imagem de santos e bordas definidas pelo border radius
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 240,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/santos.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0))),
                    ),
                    Align(
                        // container com o descritivo da imagem de santos
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF3E8538),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            width: largura * 1,
                            height: altura * 0.05,
                            padding: const EdgeInsets.fromLTRB(15, 6, 0, 0),
                            child: Text('Santos SP 2019',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.jetBrainsMono(
                                    textStyle:
                                        const TextStyle(color: Colors.white)))))
                  ],
                ),
              ),
              const Gap(20),
              Padding(
                // container com texto para incentivar o acesso ao menu
                padding: const EdgeInsets.fromLTRB(27, 10, 27, 10),
                child: Container(
                  width: largura * 1.0,
                  height: altura * 0.17,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                      color: const Color(0xFF2E643E),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                      'Para evitar isso é nescessario cuidar de nosso lixo. Confira nosso menu lateral para mais informações',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.jetBrainsMono(
                        textStyle: const TextStyle(color: Colors.white),
                      )),
                ),
              ),
              Container(
                  // footer final.
                  width: largura,
                  height: 50,
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color(0xFF1A2F1C)),
                  child: Text('copyright@2024 ArthurS e ArthurQ',
                      style: GoogleFonts.faustina(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 15))))
            ])))));
  }
}
