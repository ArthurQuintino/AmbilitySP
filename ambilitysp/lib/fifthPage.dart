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
import 'package:ambilitysp/main.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: fiftyPage(),
  ));
}

class fiftyPage extends StatelessWidget {
  const fiftyPage({super.key});

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;

    double largura = MediaQuery.of(context).size.width;

    //variaveis locais para receber os kilos

    // double kg = 0;

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
                              const ThirdPage()), // caminho para a terceira pagina
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
                      onTap: () {},
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
              Gap(20),
              Container(
                width: largura,
                height: 40,
                color: Color(0xFF3E8538),
                child: Text('Cotação dos Materiais Reciclaveis',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.faustina(
                        textStyle: const TextStyle(
                            color: Colors.white, fontSize: 20))),
              ),
              Container(
                  width: largura * 0.8,
                  height: altura * 0.3,
                  color: const Color(0xFF2E643E),
                  padding: const EdgeInsets.all(20),
                  child: ListView()),
              Gap(20),
              Container(
                width: largura,
                height: 50,
                color: Color(0xFF3E8538),
                child: Text('Cotação dos Materiais Reciclaveis',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.faustina(
                        textStyle: const TextStyle(
                            color: Colors.white, fontSize: 20))),
              ),
              Gap(20),
              Container(
                width: largura * 0.8,
                height: altura * 0.3,
                color: const Color(0xFF2E643E),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text('Calculadora De Ganhos',
                        style: GoogleFonts.jetBrainsMono(
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 20))),
                    TextField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF204029),
                          hintText: 'Insira a quantidade de peso (KG)',
                          hintStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none)),
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                  width: largura,
                  height: 50,
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color(0xFF1A2F1C)),
                  child: Text('copyright@2024 Alexandre e ArthurQ',
                      style: GoogleFonts.faustina(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 15))))
            ],
          ),
        )),
      ),
    );
  }
}
