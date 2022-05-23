import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  final TextEditingController controller;
  const PasswordInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        hintText: 'كلمة المرور',
        suffixIcon: const Icon(Icons.lock),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return 'الرجاء إدخال كلمة المرور';
        } else if (value.length < 6) {
          return 'الرقم السري يجب أن يكون أكثر من 6 أحرف';
        }
        return null;
      },
    );
  }
}
