import 'package:basic/quest_form.dart';
import 'package:basic/quests.dart';
import 'package:flutter/material.dart';

main() => runApp(const App());

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "App Title",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.amber,
            ),
            body: const Column(children: [Quests(), QuestForm()])));
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  createState() {
    return AppState();
  }
}
