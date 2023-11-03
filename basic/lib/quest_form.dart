import 'package:flutter/material.dart';

class _QuestFormState extends State<QuestForm> {
  final formKey = GlobalKey<FormState>();

  void _onValidate(GlobalKey<FormState> formKey) {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Sucesso")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
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
                onPressed: () => _onValidate(formKey),
                child: const Text("Submit"))
          ],
        ));
  }
}

class QuestForm extends StatefulWidget {
  const QuestForm({super.key});

  @override
  createState() {
    return _QuestFormState();
  }
}
