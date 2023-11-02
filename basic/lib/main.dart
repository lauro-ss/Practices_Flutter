import 'package:flutter/material.dart';
import './quest.dart';
import './response.dart';

main() => runApp(const App());

class _AppState extends State<App> {
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

  void _nextQuest() {
    if (_aq < _quests.length - 1) {
      setState(() {
        _aq++;
      });
    } else {
      setState(() {
        _aq = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("App Title")),
      body: Column(children: [
        Quest(_quests[_aq]),
        ..._answers[_aq].map((v) => Response(v, _nextQuest)),
      ]),
    ));
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  createState() {
    return _AppState();
  }
}
