import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  const TextInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        hintText: 'اسم المستخدم',
        suffixIcon: const Icon(Icons.person),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value!.isEmpty) {
          return 'الرجاء إدخال اسم المستخدم';
        } else if (value.length < 5) {
          return 'الرجاء إدخال اسم المستخدم بطول أكثر من 5 أحرف';
        } else if (value.length > 20) {
          return 'الرجاء إدخال اسم المستخدم بطول أقل من 20 أحرف';
        }
        return null;
      },
    );
  }
}
