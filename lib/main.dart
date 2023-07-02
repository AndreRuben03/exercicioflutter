import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cursos CEP Cora',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(188, 4, 86, 194)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'SENAC-GO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'images/senac.jpg',
              scale: 2.5,
            ),
            Text("SENAC-GO"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Wrap(
                  spacing: 20.0,
                  runSpacing: 10.0,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'images/auxadm.jpg',
                          width: 250,
                          height: 250,
                        ),
                        Text("Assistente Administrativo - 160 horas"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'images/dba.jpg',
                          width: 250,
                          height: 250,
                        ),
                        Text("Administrador de Banco de Dados - 200 horas"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'images/ti.jpg',
                          width: 250,
                          height: 250,
                        ),
                        Text("Técnico em informática - 1200 horas"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'images/opcomp.jpg',
                          width: 250,
                          height: 250,
                        ),
                        Text("Operador de computador - 196 horas"),
                      ],
                    ),
                  ],
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'images/info.jpg',
                          width: 250,
                          height: 250,
                        ),
                        Text("Informática Fundamental - 60 horas"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'images/py.jpg',
                          width: 250,
                          height: 250,
                        ),
                        Text("Fundamentos de Python I - 30 horas"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'images/cftv.jpg',
                          width: 250,
                          height: 250,
                        ),
                        Text("Instalador de Sistemas Eletroeletrônicos e CFTV - 200 horas"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'images/devweb.jpg',
                          width: 250,
                          height: 250,
                        ),
                        Text("Desenvolvedor WEB - 108 horas"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
