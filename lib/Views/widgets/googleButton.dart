import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final double? width;
  final double? height;
  final VoidCallback onPressed;
  const GoogleButton(
      {Key? key, this.width, this.height, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/google.png',
              height: 20,
            ),
            SizedBox(width: width! * 0.04),
            const Text(
              'تسجيل الدخول باستخدام جوجل',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
