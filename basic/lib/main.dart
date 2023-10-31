import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  App({super.key});

  final quests = [
    "Pergunta 1", 
    "Pergunta 2",
    "Pergunta 3"
    ];
  
  final List<List<String>> answers = [
    ["Resposta 1, Resposta 2, Resposta 3"],
    ["Resposta 1, Resposta 2, Resposta 3"],
    ["Resposta 1, Resposta 2, Resposta 3"]
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App Title")
        ),
        body: Column(
          children: [
            for(int i = 0; i < quests.length; i++) Text(quests[i]),
            /* for(int i = 0; i < answers[0].length; i++) ElevatedButton(onPressed: null, child: Text(answers[0][i])), */
            ElevatedButton(onPressed: ()  => print("Pergunta"), child: Text("Resposta 1")),
            /* ElevatedButton(onPressed: respond, child: Text("Respsota 2")) */
          ],
        ),
      )
    );
  }
}
