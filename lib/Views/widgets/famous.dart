import 'package:flutter/material.dart';
import 'package:rawjly_net/Views/widgets/famousCard.dart';

class FamousAds extends StatefulWidget {
  const FamousAds({Key? key}) : super(key: key);

  @override
  State<FamousAds> createState() => _FamousAdsState();
}

class _FamousAdsState extends State<FamousAds> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'اشهر الاعلانات',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 300),
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FamousCard(index: index);
              },
              itemCount: 10),
        ),
      ],
    );
  }
}
