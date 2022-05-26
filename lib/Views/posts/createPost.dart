import 'package:flutter/material.dart';
import 'package:rawjly_net/Views/widgets/SaveButton.dart';

import '../widgets/CustomTextField.dart';
import '../widgets/imageInput.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Container(
                width: screenWidth * 0.9,
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: const Text(
                      'اضافة اعلان',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(
                      hintText: 'عنوان الاعلان',
                      icon: Icons.mobile_friendly,
                      labelText: 'عنوان الاعلان'),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    hintText: 'محتوى الاعلان',
                    icon: Icons.mobile_friendly,
                    labelText: 'محتوى الاعلان',
                    maxLines: 5,
                  ),
                  const SizedBox(height: 20),
                  const Text('صورة الاعلان'),
                  const ImageInput(),
                  const SizedBox(height: 20),
                  const SaveButton(),
                ]),
              ),
            ),
          ),
        ));
  }
}
