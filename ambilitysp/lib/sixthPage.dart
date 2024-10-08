import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'package:ambilitysp/secondPage.dart';
import 'package:ambilitysp/thirdPage.dart';
import 'package:ambilitysp/fourthPage.dart';
import 'package:ambilitysp/calculdora.dart';
import 'package:ambilitysp/main.dart';
import 'package:ambilitysp/fifthPage.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: sixthPage(),
  ));
}

class sixthPage extends StatefulWidget {
  const sixthPage({super.key});
  @override
  State<sixthPage> createState() => _SixthPageState();
}

double quilos = 0;
double materialselecionado = 0.0;
double resultado = 0;
String nomematerialsecionado = '';

List<CalculdoraCarbono> calculadoraCarbono = [
  CalculdoraCarbono("Borracha", 2.5),
  CalculdoraCarbono("Plástico", 6.0),
  CalculdoraCarbono("Alumínio", 4.0),
  CalculdoraCarbono("Cobre", 15.0),
  CalculdoraCarbono("Ferro", 2.0),
  CalculdoraCarbono("Vidro", 0.7),
  CalculdoraCarbono("Papelão", 0.4),
  CalculdoraCarbono("Chumbo", 9.0),
  CalculdoraCarbono("Aço", 1.0),
  CalculdoraCarbono("Latão", 3.5),
  CalculdoraCarbono("Ouro", 100.0),
  CalculdoraCarbono("Prata", 7.0),
  CalculdoraCarbono("Níquel", 12.0),
  CalculdoraCarbono("Zinco", 1.5),
  CalculdoraCarbono("Bronze", 5.0),
  CalculdoraCarbono("Magnésio", 6.0),
  CalculdoraCarbono("Titânio", 20.0),
  CalculdoraCarbono("Chapa de aço", 1.5),
  CalculdoraCarbono("Fios de cobre", 22.0),
  CalculdoraCarbono("Baterias", 8.0),
  CalculdoraCarbono("Polietileno", 3.0),
  CalculdoraCarbono("Polipropileno", 2.5),
  CalculdoraCarbono("Poliestireno", 4.0),
  CalculdoraCarbono("PVC", 3.5),
  CalculdoraCarbono("Silicone", 5.0),
  CalculdoraCarbono("Fibra de vidro", 2.5),
  CalculdoraCarbono("Tecido sintético", 2.0),
  CalculdoraCarbono("Papel", 0.25),
  CalculdoraCarbono("Papel reciclado", 0.15),
  CalculdoraCarbono("Madeira", 1.0),
  CalculdoraCarbono("Eletrônicos", 15.0),
  CalculdoraCarbono("Baterias de lítio", 10.0),
  CalculdoraCarbono("Neodímio", 35.0),
  CalculdoraCarbono("Carbono", 5.0),
  CalculdoraCarbono("Resina epóxi", 4.5),
  CalculdoraCarbono("Grafite", 8.0),
  CalculdoraCarbono("Acrílico", 2.0),
  CalculdoraCarbono("Cerâmica", 1.2),
  CalculdoraCarbono("Composto de carbono", 4.0),
  CalculdoraCarbono("Fibra sintética", 3.0),
  CalculdoraCarbono("Têxtil natural", 1.5),
  CalculdoraCarbono("Biodiesel", 3.0),
  CalculdoraCarbono("Bioplástico", 2.0),
  CalculdoraCarbono("Poliuretano", 3.5),
  CalculdoraCarbono("Compostos químicos", 5.0),
  CalculdoraCarbono("Pneu", 5.0),
];

class _SixthPageState extends State<sixthPage> {
  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;

    final ButtonStyle style =
        ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1A8438));

    void calcularCarbono() {
      if (materialselecionado != 0 && quilos > 0) {
        setState(() {
          resultado = quilos * materialselecionado;
        });
      }
    }

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
              const Gap(20),
              Container(
                width: largura,
                height: 40,
                color: const Color(0xFF3E8538),
                child: Text('Taxa de Emissão de CO2 dos Materiais',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.faustina(
                        textStyle: const TextStyle(
                            color: Colors.white, fontSize: 20))),
              ),
              const Gap(20),
              Container(
                  width: largura / 1.15,
                  height: altura * 0.40,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color(0xFF2E643E),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView.builder(
                    itemCount: calculadoraCarbono.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Card(
                          elevation: 3,
                          color: const Color(0xFF0C3728),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(calculadoraCarbono[index].materiais,
                                    style: GoogleFonts.faustina(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 15))),
                                Text(
                                    '${calculadoraCarbono[index].co2.toStringAsFixed(2)} CO² P/Kg',
                                    style: GoogleFonts.faustina(
                                        textStyle: const TextStyle(
                                            color: Colors.white, fontSize: 15)))
                              ],
                            ),
                          ));
                    },
                  )),
              const Gap(30),
              Container(
                width: largura,
                height: 40,
                color: const Color(0xFF3E8538),
                child: Text('Calculadora De Emissões de CO2',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.faustina(
                        textStyle: const TextStyle(
                            color: Colors.white, fontSize: 20))),
              ),
              const Gap(30),
              Container(
                width: largura / 1.15,
                height: 600,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: const Color(0xFF2E643E),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Calculadora de Emissão de Carbono',
                          style: GoogleFonts.faustina(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 22))),
                    ),
                    const Gap(20),
                    TextField(
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFF204029),
                            hintText: 'Insira a quantidade de peso (KG)',
                            hintStyle: const TextStyle(
                                color: Colors.white, fontSize: 13),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none)),
                        style: const TextStyle(color: Colors.white),
                        onChanged: (value) {
                          setState(() {
                            quilos = double.tryParse(value) ?? 0;
                          });
                          <TextInputFormatter>[
                            FilteringTextInputFormatter
                                .digitsOnly // codigo para limitar a digitar apenas numeros
                          ];
                        }),
                    const Gap(20),
                    SizedBox(
                      width: largura / 1.15,
                      height: 280,
                      child: Expanded(
                          child: ListView.builder(
                        itemCount: calculadoraCarbono.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext ctx, index) {
                          return Card(
                              elevation: 3,
                              color: const Color(0xFF0C3728),
                              child: ListTile(
                                title: Text(
                                  calculadoraCarbono[index].materiais,
                                  style: GoogleFonts.faustina(
                                      textStyle: const TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                ),
                                onTap: () {
                                  setState(() {
                                    materialselecionado =
                                        calculadoraCarbono[index].co2;
                                    nomematerialsecionado =
                                        calculadoraCarbono[index].materiais;
                                  });
                                },
                              ));
                        },
                      )),
                    ),
                    const Gap(20),
                    SizedBox(
                      width: largura / 1.12,
                      height: 30,
                      child: ElevatedButton(
                        style: style,
                        onPressed: () {
                          calcularCarbono();
                        },
                        child: Text(
                          'Calcular',
                          style: GoogleFonts.jetBrainsMono(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
                        ),
                      ),
                    ),
                    const Gap(20),
                    TextField(
                      cursorColor: Colors.white,
                      readOnly: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          filled: true,
                          hintText:
                              'Emissão de CO2: ${resultado.toStringAsFixed(2)} kg para: $nomematerialsecionado',
                          fillColor: const Color(0xFF204029),
                          hintStyle: const TextStyle(
                              color: Colors.white, fontSize: 13),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none)),
                    )
                  ],
                ),
              ),
              const Gap(20),
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
