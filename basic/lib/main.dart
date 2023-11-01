import 'package:flutter/material.dart';
import './quest.dart';

main() => runApp(const App());

class _AppState extends State<App> {
  int _aq = 0;

  final _quests = [
    "Qual a sua fruta favorita?",
    "Qual o seu animal favorito?",
    "Qual o seu jogo favorito?"
  ];

  final List<List<String>> _answers = [
    ["Resposta 1, Resposta 2, Resposta 3"],
    ["Resposta 1, Resposta 2, Resposta 3"],
    ["Resposta 1, Resposta 2, Resposta 3"]
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
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Quest(_quests[_aq]),
            for (var i in _answers[_aq])
              ElevatedButton(
                onPressed: _nextQuest,
                child: Text(i),
              ),
          ],
        ),
      ),
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
