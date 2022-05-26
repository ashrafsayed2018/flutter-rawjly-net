import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rawjly_net/helpers/takePhoto.dart';

class CustomBottomSheet extends StatefulWidget {
  File? image;
  // setstate function
  CustomBottomSheet({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          const Text(
            'اختر صوره الملف الشخصي',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  TakePhoto.takePhoto(
                    ImageSource.camera,
                  );
                },
                icon: const Icon(Icons.camera_alt),
                label: const Text('الكاميرا'),
              ),
              const SizedBox(width: 40),
              TextButton.icon(
                onPressed: () {
                  TakePhoto.takePhoto(
                    ImageSource.gallery,
                  );
                },
                icon: const Icon(Icons.image),
                label: const Text('المعرض'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
