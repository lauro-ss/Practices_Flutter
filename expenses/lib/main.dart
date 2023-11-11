import 'package:expenses/models/tran.dart';
import 'package:flutter/material.dart';

main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: "OpenSans",
        ),
        home: Home());
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
            child: Column(
              children: [
                ..._tran.map((t) {
                  return Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 2)),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          t.value.toString(),
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
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
