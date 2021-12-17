

import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

main() => runApp(PerguntaApp());


class PerguntaApp extends StatefulWidget{

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void _responder(){
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
            Questao(perguntas[perguntaSelecionada]),
            Resposta('Resposta1'),
            Resposta('Resposta2'),
            Resposta('Resposta3'),
          ],
        ),
      ),
    );
  }
}