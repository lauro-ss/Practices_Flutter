import 'package:basic/quest_form.dart';
import 'package:basic/quests.dart';
import 'package:flutter/material.dart';
import './nav.dart';

main() => runApp(const App());

class AppState extends State<App> {
  Widget? wg;

  void _goto(Widget? g) {
    setState(() {
      wg = g;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            drawer: Nav(
              _goto,
            ),
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
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
                            padding: EdgeInsets.fromLTRB(27, 20, 27, 20),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.format_list_bulleted,
                                  size: 50,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Quest\nList",
                                  softWrap: true,
                                  textAlign: TextAlign.center,
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
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(27, 20, 27, 20),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.format_list_bulleted_add,
                                  size: 50,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Add\nQuest",
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 28),
                                )
                              ],
                            ),
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
