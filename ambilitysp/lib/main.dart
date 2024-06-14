import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'package:ambilitysp/secondPage.dart';

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
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('AmbilitySP',
                  style: GoogleFonts.jetBrainsMono(
                      textStyle: const TextStyle(color: Colors.white))),
              centerTitle: true,
              backgroundColor: const Color.fromARGB(255, 0, 102, 51),
              iconTheme: const IconThemeData(color: Colors.white),
            ),
            backgroundColor: const Color.fromARGB(255, 77, 167, 104),
            drawer: Drawer(
                backgroundColor: const Color.fromARGB(255, 4, 101, 60),
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  children: [
                    ListTile(
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
                              builder: (context) => const secondPage()),
                        );
                      },
                      leading: const Image(
                        image: AssetImage('images/calendar.png'),
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
                              builder: (context) => const secondPage()),
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
                              builder: (context) => const secondPage()),
                        );
                      },
                      leading: const Image(
                        image: AssetImage('images/telephone.png'),
                        width: 40,
                      ),
                    ),
                  ],
                )),
            body: SingleChildScrollView(
                child: Center(
                    child: Column(children: [
              Container(
                width: largura,
                padding: const EdgeInsets.fromLTRB(27, 30, 27, 0),
                child: Text('Bem vindo! proteja o meio ambiente com a gente!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.jetBrainsMono(
                        textStyle: const TextStyle(color: Colors.white))),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                child: Container(
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
              const Gap(20),
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                child: Text(
                    'O litoral paulistano vem sofrendo com o descarte irregular de lixo nos Mares, acabando com a nossa biodiversidade',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.jetBrainsMono(
                        textStyle: const TextStyle(color: Colors.white))),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                child: Column(
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
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(115, 211, 107, 1),
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
                padding: const EdgeInsets.fromLTRB(27, 10, 27, 10),
                child: Container(
                  width: largura * 1.0,
                  height: altura * 0.17,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(57, 130, 79, 1),
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
                  width: largura,
                  height: 50,
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(100, 53, 97, 58)),
                  child: Text('copyright@2024 ArthurS e ArthurQ',
                      style: GoogleFonts.faustina(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 15))))
            ])))));
  }
}
