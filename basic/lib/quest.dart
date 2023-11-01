import 'package:flutter/material.dart';

class Quest extends StatelessWidget {
  final String _text;

  const Quest(this._text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: const TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    );
  }
}
