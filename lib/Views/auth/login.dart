import 'package:flutter/gestures.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:rawjly_net/Views/auth/register.dart';
import 'package:rawjly_net/Views/widgets/button.dart';
import 'package:rawjly_net/Views/widgets/emailInput.dart';
import 'package:rawjly_net/Views/widgets/googleButton.dart';
import 'package:rawjly_net/Views/widgets/passwordInput.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: deviceHeight * 0.95,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GoogleButton(
                            width: constraints.maxWidth * 0.9,
                            height: constraints.maxHeight * 0.1,
                            onPressed: () {}),
                        const Text(
                          'دخول',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: constraints.maxHeight * 0.02),
                        const Text('الرجاء تسجيل الدخول للوصول إلى التطبيق'),
                        SizedBox(height: constraints.maxHeight * 0.02),
                        Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          key: _formkey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              EmailInput(
                                controller: _emailController,
                              ),
                              SizedBox(height: constraints.maxHeight * 0.02),
                              PasswordInput(
                                controller: _passwordController,
                              ),
                              SizedBox(height: constraints.maxHeight * 0.02),
                              Button(
                                  width: constraints.maxWidth * .3,
                                  height: constraints.maxHeight * .1,
                                  text: 'دخول',
                                  onPressed: () {
                                    if (_formkey.currentState!.validate()) {}
                                  })
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'نسيت كلمة المرور؟',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: constraints.maxHeight * 0.02),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'ليس لديك حساب؟ ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'انشاء حساب',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const Register(),
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
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
