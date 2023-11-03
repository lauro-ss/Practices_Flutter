import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this._onReset, {super.key});

  final Function() _onReset;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Parabéns!",
            textAlign: TextAlign.center, style: TextStyle(fontSize: 28)),
        SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
                onPressed: _onReset, child: const Text("Refazer")))
      ],
    );
  }
}
