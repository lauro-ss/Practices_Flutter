import 'package:flutter/material.dart';

main() => runApp(App());

class AppState extends State<App>{

  int aq = 0;

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
    if(aq < quests.length - 1){
      setState(() {
        aq++;
      });
    }else{
      setState(() {
        aq = 0;
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
            Text(quests[aq]),
            for(var i in answers[aq])
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
  AppState createState() {
    return AppState();
  }
  
}
