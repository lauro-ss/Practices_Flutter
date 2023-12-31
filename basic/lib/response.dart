import 'dart:math';

import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  const Response(this._text, this._response, {super.key});

  final String _text;
  final Function(int) _response;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () => _response(Random().nextInt(9) + 1),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber, foregroundColor: Colors.black),
        child: Text(_text, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
