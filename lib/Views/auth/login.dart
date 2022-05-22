import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
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
                height: deviceHeight * 0.15,
                child: const FittedBox(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/logo.png',
                    ),
                    radius: 50,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: deviceHeight * 0.75,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: constraints.maxWidth * 0.8,
                          height: constraints.maxHeight * 0.09,
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
                                  height: constraints.maxHeight * 0.05,
                                ),
                                SizedBox(width: constraints.maxWidth * 0.02),
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
                        ),
                        const Text(
                          'دخول',
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: constraints.maxHeight * 0.01),
                        const Text('الرجاء تسجيل الدخول للوصول إلى التطبيق'),
                        SizedBox(height: constraints.maxHeight * 0.08),
                        Form(
                            key: _formkey,
                            child: Column(
                              children: [
                                Container(
                                  height: constraints.maxHeight * .12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[200]),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Center(
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.length < 4) {
                                            return 'البريد الإلكتروني غير صحيح';
                                          } else {
                                            return null;
                                          }
                                        },
                                        textAlign: TextAlign.right,
                                        decoration: const InputDecoration(
                                          suffixIcon: Icon(Icons.email),
                                          border: InputBorder.none,
                                          hintText: 'البريد الإلكتروني',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: constraints.maxHeight * 0.04),
                                Container(
                                  height: constraints.maxHeight * .12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[200]),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Center(
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.length < 4) {
                                            return 'كلمة المرور غير صحيحة';
                                          } else {
                                            return null;
                                          }
                                        },
                                        obscureText: true,
                                        textAlign: TextAlign.right,
                                        decoration: const InputDecoration(
                                          suffixIcon: Icon(Icons.lock_outline),
                                          border: InputBorder.none,
                                          hintText: 'كلمة المرور',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: constraints.maxWidth * 0.4,
                                  height: constraints.maxHeight * 0.1,
                                  margin: EdgeInsets.only(
                                      top: constraints.maxHeight * .05),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (_formkey.currentState!.validate()) {
                                        Navigator.pushNamed(context, '/home');
                                      }
                                    },
                                    child: const Text(
                                      'دخول',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
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
                          text: const TextSpan(children: [
                            TextSpan(
                              text: 'ليس لديك حساب؟ ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'انشاء حساب',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ]),
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
