import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
         title: const Text('AmbilitySP', style: TextStyle(color: Colors.white, fontFamily:'jetbrains')),
         centerTitle: true,
         backgroundColor: const Color.fromARGB(255, 0, 102, 51),
         iconTheme: const IconThemeData(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 77, 167, 104),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              ListTile(
                title: Text('teste'),
              ),
              ListTile(
                title: Text('teste'),
              ),
              ListTile(
                title: Text('teste'),
              ),
              ListTile(
                title: Text('teste'),
              ),
              ListTile(
                title: Text('teste'),
              ),
              ListTile(
                title: Text('teste'),
              )
            ],
          )
        ),
        body: Center(
          child: Column(
            children: [
              const Text('Bem vindo! proteja o meio ambiente com a gente!', style: TextStyle(color: Colors.white)),
              Container(
                color: Colors.white, 
                child: Row(
                  children: [
                    Image.asset('/image/ambility.png'),
                    Image.asset('/image/sp.png')
                  ],
                )
              ),
              Container(
                
              )
            ],
          )
        )
      )
    );
  }
}
