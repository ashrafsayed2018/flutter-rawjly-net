import 'package:flutter/material.dart';
import 'package:rawjly_net/Views/widgets/famousCard.dart';

import 'latestCard.dart';

class LatestAds extends StatefulWidget {
  const LatestAds({Key? key}) : super(key: key);

  @override
  State<LatestAds> createState() => _LatestAdsState();
}

class _LatestAdsState extends State<LatestAds> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 5),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return LatestCard(index: index);
          },
          itemCount: 100),
    );
  }
}
