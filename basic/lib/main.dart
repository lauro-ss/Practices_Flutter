import 'package:basic/quests.dart';
import 'package:flutter/material.dart';

main() => runApp(const App());

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("App Title")),
            body: const Quests()));
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  createState() {
    return _AppState();
  }
}
