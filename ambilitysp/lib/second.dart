import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ambilitysp/main.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: second(),
  ));
}

class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;

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
                  onTap: () {
                    Navigator.pop(context);
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
                  onTap: () {},
                  leading: const Image(
                    image: AssetImage('images/calendar.png'),
                    width: 40,
                  ),
                ),
                ListTile(
                  title: Text('Como descartar seu lixo',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(color: Colors.white))),
                  onTap: () {},
                  leading: const Image(
                    image: AssetImage('images/question.png'),
                    width: 40,
                  ),
                ),
                ListTile(
                  title: Text('Denúncias',
                      style: GoogleFonts.jetBrainsMono(
                          textStyle: const TextStyle(color: Colors.white))),
                  onTap: () {},
                  leading: const Image(
                    image: AssetImage('images/telephone.png'),
                    width: 40,
                  ),
                ),
              ],
            )),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(27, 10, 27, 10),
                  child: Container(
                      width: 470,
                      height: 200,
                      margin: const EdgeInsets.only(top: 25),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 57, 130, 79),
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Text(
                          'Dias de coleta seletiva:\n\n'
                          'Região norte litorânea: todas as quintas e terças\n'
                          'Região sul litorânea: todas as sextas e quartas\n',
                          style: GoogleFonts.jetBrainsMono(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      15))))), //primeiro container, contém as informações sobre dias de coleta
              const Gap(15),
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 10, 27, 10),
                child: Container(
                    width: 470,
                    height: 540,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 63, 63, 63),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                  child: Column(
                                children: [
                                  const CircleAvatar(
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
                                  Text('Amarelos',
                                      style: GoogleFonts.jetBrainsMono(
                                          textStyle: const TextStyle(
                                              color: Colors.white))),
                                  const Gap(30),
                                  const CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 153, 0),
                                      radius: 26),
                                  Text('Organico',
                                      style: GoogleFonts.jetBrainsMono(
                                          textStyle: const TextStyle(
                                              color: Colors.white))),
                                ],
                              )),
                            ]),
                      ),
                    ])), //container 2 pt.1
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 10, 27, 10),
                child: Container(
                    width: 470,
                    height: 130,
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 57, 130, 79),
                        borderRadius: BorderRadius.circular(26)),
                    child: Text(
                        'Telefones:\nIbama: 0800 618080\nOrgão estadual litoraneo: (13)3344-9400',
                        style: GoogleFonts.jetBrainsMono(
                            textStyle: const TextStyle(
                          color: Colors.white,
                        )))), //terceiro container, seção de denúncias
              ),
              Container(
                  width: largura,
                  height: 110,
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 115, 211, 107)),
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
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(100, 53, 97, 58)),
                  child: Text('copyright@2024 ArthurS e ArthurQ',
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
