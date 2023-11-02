import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  const Response(this._text, this._response, {super.key});

  final String _text;
  final Function() _response;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: _response,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber[800], foregroundColor: Colors.black),
        child: Text(_text, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
