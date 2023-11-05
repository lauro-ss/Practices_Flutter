import 'package:basic/quest_form.dart';
import 'package:basic/quests.dart';
import 'package:flutter/material.dart';

class QuestBuilder extends StatelessWidget {
  const QuestBuilder(this.qf, {super.key});

  final Widget qf;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [qf],
    );
  }
}
