import 'package:animacoes_complexas/screens/login/widget/input_field.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
          child: Column(
        children: const <Widget>[
          InputField(
              hint: "Username", obscure: false, icon: Icons.person_outline),
          InputField(hint: "Password", obscure: true, icon: Icons.lock_outline),
        ],
      )),
    );
  }
}
