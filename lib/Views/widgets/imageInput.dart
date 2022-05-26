import 'package:flutter/material.dart';
import 'dart:io';

import 'package:rawjly_net/Views/widgets/bottomSheet.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: _image != null
                ? FileImage(_image!)
                : const NetworkImage(
                    'https://i.imgur.com/BoN9kdC.png',
                  ) as ImageProvider,
          ),
          Positioned(
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) => CustomBottomSheet(
                    image: _image,
                  ),
                );
              },
              child: const Icon(
                Icons.camera_alt,
                color: Colors.blueAccent,
                size: 30,
              ),
            ),
            top: 0,
            right: 0,
          ),
        ],
      ),
    );
  }
}
