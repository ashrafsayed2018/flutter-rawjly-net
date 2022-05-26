import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class TakePhoto {
  static takePhoto(ImageSource source) async {
    ImagePicker imagePicker = ImagePicker();
    try {
      final image = await imagePicker.pickImage(source: source);

      if (image != null) {
        final imageTemprary = File(image.path);
      }
      // ignore: nullable_type_in_catch_clause
    } on PlatformException catch (e) {
      print("Error: ${e.message}");
    }
  }
}
