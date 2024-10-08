import 'dart:ui';
import 'package:ambilitysp/sixthPage.dart';
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

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: fifthPage(),
  ));
}

class fifthPage extends StatefulWidget {
  const fifthPage({super.key});
  @override
  State<fifthPage> createState() => _fifthPageState();
}

double quilos = 0;
double materialselecionado = 0.0;
double resultado = 0;
String nomematerialsecionado = '';

List<calculadoraGanhos> calculadoraGanho = [
  calculadoraGanhos("Borracha", 2.5),
  calculadoraGanhos("Plástico", 1.2),
  calculadoraGanhos("Alumínio", 5.0),
  calculadoraGanhos("Cobre", 25.0),
  calculadoraGanhos("Ferro", 2.5),
  calculadoraGanhos("Vidro", 1.5),
  calculadoraGanhos("Papelão", 0.75),
  calculadoraGanhos("Chumbo", 10.0),
  calculadoraGanhos("Aço", 8.0),
  calculadoraGanhos("Latão", 7.5),
  calculadoraGanhos("Ouro", 280.0),
  calculadoraGanhos("Prata", 15.0),
  calculadoraGanhos("Níquel", 18.0),
  calculadoraGanhos("Zinco", 2.0),
  calculadoraGanhos("Bronze", 6.5),
  calculadoraGanhos("Magnésio", 9.0),
  calculadoraGanhos("Titânio", 30.0),
  calculadoraGanhos("Chapa de aço", 2.8),
  calculadoraGanhos("Fios de cobre", 27.0),
  calculadoraGanhos("Baterias", 12.0),
  calculadoraGanhos("Polietileno", 1.8),
  calculadoraGanhos("Polipropileno", 1.5),
  calculadoraGanhos("Poliestireno", 2.0),
  calculadoraGanhos("PVC", 1.6),
  calculadoraGanhos("Silicone", 4.0),
  calculadoraGanhos("Fibra de vidro", 3.0),
  calculadoraGanhos("Tecido sintético", 2.0),
  calculadoraGanhos("Papel", 0.50),
  calculadoraGanhos("Papel reciclado", 0.30),
  calculadoraGanhos("Madeira", 1.5),
  calculadoraGanhos("eletrônicos", 20.0),
  calculadoraGanhos("Baterias de lítio", 18.0),
  calculadoraGanhos("Neodímio", 45.0),
  calculadoraGanhos("Carbono", 10.0),
  calculadoraGanhos("Resina epóxi", 7.0),
  calculadoraGanhos("Grafite", 12.0),
  calculadoraGanhos("Acrílico", 3.5),
];

class _fifthPageState extends State<fifthPage> {
  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;

    final ButtonStyle style =
        ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1A8438));

    void calcularGanhos() {
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
                  onTap: () {},
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
                ),
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
                child: Text('Cotação dos Materiais Reciclaveis',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.faustina(
                        textStyle: const TextStyle(
                            color: Colors.white, fontSize: 20))),
              ),
              const Gap(30),
              Container(
                  width: largura / 1.15,
                  height: altura * 0.40,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color(0xFF2E643E),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView.builder(
                    itemCount: calculadoraGanho.length,
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
                                Text(calculadoraGanho[index].materiais,
                                    style: GoogleFonts.faustina(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 15))),
                                Text(
                                    'R\$ ${calculadoraGanho[index].cotacao.toStringAsFixed(2)} P/Kg',
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
                child: Text('Cotação dos Materiais Reciclaveis',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.faustina(
                        textStyle: const TextStyle(
                            color: Colors.white, fontSize: 20))),
              ),
              const Gap(30),
              Container(
                width: largura / 1.15,
                height: 590,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: const Color(0xFF2E643E),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Calculadora De Ganhos',
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
                        itemCount: calculadoraGanho.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext ctx, index) {
                          return Card(
                              elevation: 3,
                              color: const Color(0xFF0C3728),
                              child: ListTile(
                                title: Text(
                                  calculadoraGanho[index].materiais,
                                  style: GoogleFonts.faustina(
                                      textStyle: const TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                ),
                                onTap: () {
                                  setState(() {
                                    materialselecionado =
                                        calculadoraGanho[index].cotacao;
                                    nomematerialsecionado =
                                        calculadoraGanho[index].materiais;
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
                          calcularGanhos();
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
                              'Resultado: R\$ ${resultado.toStringAsFixed(2)} para $nomematerialsecionado',
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
