import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) quandoSelecionado;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  Questionario({
    @required this.perguntaSelecionada,
    @required this.perguntas,
    @required this.quandoSelecionado,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((resp) {
          return Resposta(
            texto: resp['texto'],
            quandoSelecionado: () => quandoSelecionado(resp['pontuacao']),
          );
        }).toList()
      ],
    );
  }
}
