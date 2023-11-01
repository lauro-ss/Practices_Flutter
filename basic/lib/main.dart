import 'package:flutter/material.dart';

main() => runApp(const App());

class _AppState extends State<App>{

  int _aq = 0;

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

  void nextQuest(){
    if(_aq < quests.length - 1){
      setState(() {
        _aq++;
      });
    }else{
      setState(() {
        _aq = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App Title")
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quests[_aq]),
            for(var i in answers[_aq])
              ElevatedButton(
                onPressed: nextQuest, 
                child: Text(i),
              ),
          ],
        ),
      )
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  createState() {
    return _AppState();
  }
  
}
