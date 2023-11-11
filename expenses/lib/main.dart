import 'package:expenses/models/tran.dart';
import 'package:flutter/material.dart';

main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  final _tran = [
    Transaction(id: 1, title: "Gas", value: 99.99, date: DateTime.now()),
    Transaction(id: 2, title: "Internet", value: 65.00, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expenses")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Card(color: Colors.cyan, child: Text("Gráfico")),
          Card(
            color: Colors.cyan,
            child: Column(
              children: [
                ..._tran.map((t) {
                  return Row(
                    children: [
                      Text(t.value.toString()),
                      Column(
                        children: [Text(t.title), Text(t.date.toString())],
                      )
                    ],
                  );
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
