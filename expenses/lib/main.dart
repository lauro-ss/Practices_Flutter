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
    Transaction(1, "Gas", 99.99, DateTime.now(), "BRL"),
    Transaction(2, "Internet", 65.00,
        DateTime.now().subtract(const Duration(days: 1)), "BRL"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expenses")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Card(
            color: Colors.cyan,
            child: Text(
              "\u{1F602}",
              style: TextStyle(fontSize: 40),
            ),
          ),
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
                          t.value,
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            t.title,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            t.date,
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
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
