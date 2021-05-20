import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            TextButton(
              child: Text('Resposta 1'),
              onPressed: () {}, 
            ),
            TextButton(
              child: Text('Resposta 2'),
              onPressed: () {}, 
            ),
            TextButton(
              child: Text('Resposta 3'),
              onPressed: () {}, 
            ),
          ],
        ),
      ),
    );
  }
}