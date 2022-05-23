import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  final TextEditingController controller;
  const EmailInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        hintText: 'البريد الإلكتروني',
        suffixIcon: const Icon(Icons.email),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return 'الرجاء إدخال البريد الإلكتروني';
        } else if (!value.contains('@')) {
          return 'الرجاء إدخال بريد إلكتروني صحيح';
        } else if (!value.contains('gmail.com') &&
            !value.contains('yahoo.com')) {
          return 'الرجاء إدخال بريد إلكتروني صحيح';
        } else if (value.length < 5) {
          return 'الرجاء إدخال بريد إلكتروني صحيح';
        }
        return null;
      },
    );
  }
}
