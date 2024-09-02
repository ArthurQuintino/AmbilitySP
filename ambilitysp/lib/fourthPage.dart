import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ambilitysp/main.dart';
import 'package:ambilitysp/secondPage.dart';
import 'package:ambilitysp/thirdPage.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: FourthPage(),
  ));
}

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    // contador de altura da tela
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              // barra superior
              title: Text('AmbilitySP',
                  style: GoogleFonts.jetBrainsMono(
                      textStyle: const TextStyle(color: Colors.white))),
              centerTitle: true,
              backgroundColor: const Color(0xFF006633),
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
                      onTap: () {},
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
                    child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  width: largura,
                  height: 40,
                  decoration: BoxDecoration(color: Color(0xFF3E8538)),
                  child: Text(
                    'Economia Circular',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.faustina(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
                Container(
                  width: largura / 1.7,
                  height: altura / 1.7,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: const Color(0xFF2E643E),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                      'Basicamente é uma forma eficiente de se reutilizar produtos que antes iriam ser descartados para gerar novos produtos, um otimo exemplo são garrafas ou latinhas, em que muitas empresas grandes ja expoem isso nas proprias embalagens. \n\n '
                      'Representação Grafica:',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 20))),
                ),
                Image.asset(
                  'images/EcoCirc.jpg',
                  width: largura / 1.3,
                  height: altura / 1.3,
                ),
                Container(
                    width: largura,
                    height: 50,
                    margin: const EdgeInsets.only(top: 30),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(color: Color(0xFF1A2F1C)),
                    child: Text('copyright@2024 ArthurS e ArthurQ',
                        style: GoogleFonts.faustina(
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 15))))
              ],
            )))));
  }
}
