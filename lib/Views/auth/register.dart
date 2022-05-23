import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rawjly_net/Views/widgets/textInput.dart';

import '../widgets/button.dart';
import '../widgets/emailInput.dart';
import '../widgets/googleButton.dart';
import '../widgets/passwordInput.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
              height: deviceHeight * 0.95,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: LayoutBuilder(builder: (context, constraints) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GoogleButton(
                          width: constraints.maxWidth * 0.9,
                          height: constraints.maxHeight * 0.1,
                          onPressed: () {}),
                      const Text(
                        'تسجيل',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Form(
                        autovalidateMode: AutovalidateMode.always,
                        key: _formKey,
                        child: Column(
                          children: [
                            TextInput(
                              controller: _usernameController,
                            ),
                            SizedBox(height: constraints.maxHeight * 0.02),
                            EmailInput(
                              controller: _emailController,
                            ),
                            SizedBox(height: constraints.maxHeight * 0.02),
                            PasswordInput(
                              controller: _passwordController,
                            ),
                            SizedBox(height: constraints.maxHeight * 0.02),
                            PasswordInput(
                              controller: _confirmPasswordController,
                            ),
                            SizedBox(height: constraints.maxHeight * 0.02),
                            Button(
                              width: constraints.maxWidth * .3,
                              height: constraints.maxHeight * .1,
                              text: 'تسجيل',
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {}
                              },
                            ),
                            SizedBox(height: constraints.maxHeight * 0.02),
                            RichText(
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: ' لديك حساب  بالفعل ؟ ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'تسجيل الدخول',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => const Login(),
                                          ),
                                        );
                                      },
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      )),
    );
  }
}
