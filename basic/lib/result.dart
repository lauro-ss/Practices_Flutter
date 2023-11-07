import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this._onReset, this._points, {super.key});

  final int _points;
  final Function() _onReset;

  String get _message {
    if (_points < 8) {
      return "Try Again!";
    } else if (_points < 12) {
      return "Success";
    } else {
      return "You Win!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_message,
            textAlign: TextAlign.center, style: TextStyle(fontSize: 28)),
        SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: _onReset,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.black),
              child: const Text("Refazer", style: TextStyle(fontSize: 20)),
            ))
      ],
    );
  }
}
