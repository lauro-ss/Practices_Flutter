import 'package:flutter/material.dart';

main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expenses")),
      body: const Column(
        children: [
          SizedBox(
              width: double.maxFinite,
              child: Card(color: Colors.cyan, child: Text("Gráfico"))),
        ],
      ),
    );
  }
}
