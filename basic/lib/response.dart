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
        child: Text(_text),
      ),
    );
  }
}
