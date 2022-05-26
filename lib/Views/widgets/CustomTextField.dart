import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final String labelText;
  final int maxLines;
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.labelText,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLines,
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        hintTextDirection: TextDirection.rtl,
        floatingLabelAlignment: FloatingLabelAlignment.center,
        labelStyle: const TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
