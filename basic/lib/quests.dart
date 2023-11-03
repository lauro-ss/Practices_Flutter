import 'package:basic/result.dart';
import 'package:flutter/material.dart';
import './quest.dart';
import './response.dart';

class QuestState extends State<Quests> {
  int _aq = 0;

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
    });
  }

  void _nextQuest() {
    setState(() {
      _aq++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _aq <= _quests.length - 1
        ? Column(children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
              child: ElevatedButton(
                onPressed: () => {print("Aqui")},
                style: const ButtonStyle(
                    iconColor: MaterialStatePropertyAll(Colors.black),
                    shape: MaterialStatePropertyAll(CircleBorder()),
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                    alignment: Alignment.topLeft,
                    padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                    foregroundColor:
                        MaterialStatePropertyAll(Colors.transparent),
                    shadowColor: MaterialStatePropertyAll(Colors.transparent),
                    iconSize: MaterialStatePropertyAll(35)),
                child: Padding(
                    child: Icon(Icons.arrow_back_ios_rounded),
                    padding: EdgeInsets.all(3)),
              ),
            ),
            Quest(_quests[_aq]),
            ..._answers[_aq].map((v) => Response(v, _nextQuest)),
          ])
        : Result(_reset);
  }
}

class Quests extends StatefulWidget {
  const Quests({super.key});

  @override
  createState() {
    return QuestState();
  }
}
