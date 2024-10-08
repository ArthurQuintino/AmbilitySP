import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ambilitysp/main.dart';
import 'package:ambilitysp/secondPage.dart';
import 'package:ambilitysp/fourthPage.dart';
import 'package:ambilitysp/fifthPage.dart';
import 'package:ambilitysp/sixthPage.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: ThirdPage(),
  ));
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final largura =
        MediaQuery.of(context).size.width; // contador de largura da tela
    final altura = MediaQuery.of(context).size.height; // contador de altura da tela
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
                      title: Text('Calculadora de Ganhos',
                          style: GoogleFonts.jetBrainsMono(
                              textStyle: const TextStyle(color: Colors.white))),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const fifthPage()), // caminho para a quarta pagina
                        );
                      },
                      leading: const Image(
                        image: AssetImage('images/calculator.png'),
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
                                  const sixthPage()), // caminho para a quarta pagina
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
                // adiciona scroll na aplicação
                child: Center(
                    child: Column(
              children: [
                const Gap(30),
                Container(
                  width: largura / 1.15,
                  height: 120,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: const Color(0xFF2E643E),
                      borderRadius: BorderRadius.circular(26)),
                  child: Text('Pontos de coleta de lixo mais proximos de você:',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(
                              fontSize: 16, color: Colors.white))),
                ),
                const Gap(30),
                Container(
                    width: largura / 1.15,
                    height: altura / 1.8,
                    decoration: BoxDecoration(
                        color: const Color(0xFF2E643E),
                        borderRadius: BorderRadius.circular(20)),
                    child: FlutterMap(
                        options: MapOptions(
                          initialCenter: LatLng(-23.9522427,-46.3757725), // localização de santos logintude e latitude
                          initialZoom: 10,
                        ),
                        children: [
                          TileLayer(
                            urlTemplate:
                                'https://tile.openstreetmap.org/{z}/{x}/{y}.png', 
                            userAgentPackageName: 'com.example.app',
                            maxNativeZoom:
                                19, 
                          ),
                          RichAttributionWidget(
                            attributions: [
                              TextSourceAttribution(
                                'OpenStreetMap contributors',
                                onTap: () => launchUrl(Uri.parse(
                                    'https://openstreetmap.org/copyright')),
                              ),
                            ],
                          ),
                        ])),
                const Gap(30),
                Container(
                    width: largura / 1.15,
                    height: 120,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: const Color(0xFF2E643E),
                        borderRadius: BorderRadius.circular(26)),
                    child: Text(
                        'Materiais que podem ser descartados em segurança:',
                        style: GoogleFonts.jetBrainsMono(
                            textStyle: const TextStyle(
                                fontSize: 16, color: Colors.white)))),
                const Gap(30),
                Container(
                    width: largura / 1.15,
                    height: 300,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: const Color(0xFF2E643E),
                        borderRadius: BorderRadius.circular(26)),
                    child: Text(
                        ' Entulhos de Construção \r Moveis Velhos \r Metais \r Papel e Papelão \r Eletrônicos \r Pilhas e baterias usadas \r Pneus \r Óleo de cozinha',
                        style: GoogleFonts.faustina(
                            textStyle: const TextStyle(
                                fontSize: 16, color: Colors.white)))),
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
            )))));
  }
}
