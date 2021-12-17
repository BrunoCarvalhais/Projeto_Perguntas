

import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());


class PerguntaApp extends StatefulWidget{

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder(){
    setState(() {
    perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context){

    final perguntas = [
      ' Qual é a sua cor favorita?',
      ' Qual é o seu animal favorito?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: Column(
          children:  [
            Text(perguntas[0]),
            ElevatedButton(onPressed: responder,
                child: Text('Resposta1')
            ),
            ElevatedButton(onPressed: responder,
                child: Text('Resposta 2')
            ),
            ElevatedButton(onPressed: responder,
                child: Text('Resposta 3')
            ),
          ],
        ),
      ),
    );
  }
}