import 'package:flutter/material.dart';

class QuestFormState extends State<QuestForm> {
  final _formKey = GlobalKey<FormState>();

  void _onValidate(GlobalKey<FormState> _formKey) {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Sucesso")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value == "") {
                  return "input inválido";
                }
                return null;
              },
            ),
            ElevatedButton(
                onPressed: () => _onValidate(_formKey),
                child: const Text("Submit"))
          ],
        ));
  }
}

class QuestForm extends StatefulWidget {
  const QuestForm({super.key});

  @override
  createState() {
    return QuestFormState();
  }
}
