import 'package:basic/quests.dart';
import 'package:flutter/material.dart';

main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("App Title")),
            body: const Quests()));
  }
}
