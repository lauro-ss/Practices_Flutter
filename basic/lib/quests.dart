import 'package:basic/result.dart';
import 'package:flutter/material.dart';
import './quest.dart';
import './response.dart';

class QuestState extends State<Quests> {
  int _aq = 0;
  int _prev = 0;
  int _points = 0;

  final _quests = const [
    "Qual a sua fruta favorita?",
    "Qual o seu animal favorito?",
    "Qual o seu planeta favorito?"
  ];

  final List<List<String>> _answers = const [
    ["Maçã", "Laranja", "Melancia"],
    ["Gato", "Cachorro", "Cavalo"],
    ["Marte", "Saturno", "Vênus"]
  ];

  void _reset() {
    setState(() {
      _aq = 0;
      _points = 0;
    });
  }

  void _back() {
    setState(() {
      _aq--;
      _points -= _prev;
    });
  }

  void _respose(int v) {
    setState(() {
      _aq++;
      _prev = v;
      _points += v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _aq <= _quests.length - 1
        ? Column(children: [
            _aq > 0
                ? Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                    child: ElevatedButton(
                      onPressed: _back,
                      style: const ButtonStyle(
                          iconColor: MaterialStatePropertyAll(Colors.black),
                          shape: MaterialStatePropertyAll(CircleBorder()),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.amber),
                          padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                          iconSize: MaterialStatePropertyAll(30)),
                      child: const Icon(Icons.arrow_back_ios_rounded),
                    ),
                  )
                : const SizedBox(height: 70),
            Quest(_quests[_aq]),
            ..._answers[_aq].map((v) => Response(v, _respose)),
          ])
        : Result(_reset, _points);
  }
}

class Quests extends StatefulWidget {
  const Quests({super.key});

  @override
  createState() {
    return QuestState();
  }
}
