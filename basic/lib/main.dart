import 'package:basic/quest_builder.dart';
import 'package:basic/quest_form.dart';
import 'package:basic/quests.dart';
import 'package:flutter/material.dart';

main() => runApp(const App());

class AppState extends State<App> {
  Widget? wg;

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
            body: wg ??
                Center(
                  child: SizedBox(
                    height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              wg = const Quests();
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.format_list_bulleted,
                                  size: 50,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Quests",
                                  style: TextStyle(fontSize: 28),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 150),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              wg = const QuestForm();
                            });
                          },
                          child: const Column(
                            children: [
                              Icon(Icons.format_list_bulleted),
                              Text("Quests")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )));
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  createState() {
    return AppState();
  }
}
