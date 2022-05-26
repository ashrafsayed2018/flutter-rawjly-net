import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rawjly_net/Views/widgets/CustomDropdown.dart';
import 'package:rawjly_net/Views/widgets/SaveButton.dart';
import 'dart:io';

import 'package:rawjly_net/Views/widgets/imageInput.dart';
import '../widgets/CustomTextField.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  final ImagePicker _imagePicker = ImagePicker();
  File? _image;
  final _cities = const [
    'الرياض',
    'الجزائر',
    'المدينة المنورة',
    'الجيزة',
  ];
  final _categories = const [
    'الأجهزة الحاسبة',
    'الأجهزة الطبية',
    'الأجهزة الخارجية',
    'الأجهزة الإلكترونية',
    'الأجهزة الأخرى',
  ];
  final _subCategories = const [
    'الأجهزة الحاسبة',
    'الأجهزة الطبية',
    'الأجهزة الخارجية',
    'الأجهزة الإلكترونية',
    'الأجهزة الأخرى',
  ];
  String? cityValue = 'الرياض';
  String? categoryValue = 'الأجهزة الحاسبة';
  String? subCategoryValue = 'الأجهزة الحاسبة';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: const Text(
                    'انشاء ملف شخصي',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const ImageInput(),
                const SizedBox(height: 20),
                const CustomTextField(
                  hintText: 'نبذه عن عملك',
                  labelText: 'نبذه عن عملك',
                  icon: Icons.description,
                  maxLines: 4,
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                    hintText: 'رقم التليفون بدون كود الدوله',
                    icon: Icons.mobile_friendly,
                    labelText: 'رقم التليفون بدون كود الدوله'),
                const SizedBox(height: 20),
                //
                const SizedBox(height: 20),
                CustomDropdwon(item: cityValue!, items: _cities),
                const SizedBox(height: 20),
                CustomDropdwon(item: categoryValue!, items: _categories),
                const SizedBox(height: 20),
                CustomDropdwon(item: subCategoryValue!, items: _subCategories),
                const SizedBox(height: 20),
                // save button here
                SaveButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget profileImage() {
  //   return SizedBox(
  //     height: 100,
  //     child: Stack(
  //       children: [
  //         CircleAvatar(
  //           radius: 60,
  //           backgroundImage: _image != null
  //               ? FileImage(_image!)
  //               : const NetworkImage(
  //                   'https://i.imgur.com/BoN9kdC.png',
  //                 ) as ImageProvider,
  //         ),
  //         Positioned(
  //           child: InkWell(
  //             onTap: () {
  //               showModalBottomSheet(
  //                 context: context,
  //                 builder: (_) => bottomSheet(),
  //               );
  //             },
  //             child: const Icon(
  //               Icons.camera_alt,
  //               color: Colors.blueAccent,
  //               size: 30,
  //             ),
  //           ),
  //           top: 0,
  //           right: 0,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget bottomSheet() {
  //   return Container(
  //     height: 100,
  //     width: MediaQuery.of(context).size.width,
  //     margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
  //     child: Column(
  //       children: [
  //         const Text(
  //           'اختر صوره الملف الشخصي',
  //           style: TextStyle(
  //             fontSize: 20,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         const SizedBox(height: 10),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             TextButton.icon(
  //               onPressed: () {
  //                 takePhoto(ImageSource.camera);
  //               },
  //               icon: const Icon(Icons.camera_alt),
  //               label: const Text('الكاميرا'),
  //             ),
  //             const SizedBox(width: 40),
  //             TextButton.icon(
  //               onPressed: () {
  //                 takePhoto(ImageSource.gallery);
  //               },
  //               icon: const Icon(Icons.image),
  //               label: const Text('المعرض'),
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }

  // void takePhoto(ImageSource source) async {
  //   try {
  //     final image = await _imagePicker.pickImage(source: source);
  //     if (image != null) {
  //       final imageTemprary = File(image.path);
  //       setState(() {
  //         _image = imageTemprary;
  //       });
  //     }
  //   } on PlatformException catch (e) {
  //     print("Error: ${e.message}");
  //   }
  // }
}
