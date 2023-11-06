import 'package:basic/quest_form.dart';
import 'package:basic/quests.dart';
import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav(this._gotoQuestForm, {super.key});

  final void Function(Widget? g) _gotoQuestForm;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.amber),
            child: Text("Nav"),
          ),
          ListTile(
            leading: const Icon(Icons.abc),
            title: const Text("Home"),
            onTap: () {
              Navigator.of(context).pop();
              _gotoQuestForm(null);
            },
          ),
          ListTile(
            leading: const Icon(Icons.abc),
            title: const Text("Quests"),
            onTap: () {
              Navigator.of(context).pop();
              _gotoQuestForm(const Quests());
            },
          ),
          ListTile(
            leading: const Icon(Icons.abc),
            title: const Text("Quests"),
            onTap: () {
              Navigator.of(context).pop();
              _gotoQuestForm(const QuestForm());
            },
          )
        ],
      ),
    );
  }
}
