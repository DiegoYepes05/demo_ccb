import 'package:flutter/material.dart';

class CustomSwiperImage extends StatelessWidget {
  final String imageUrl;
  const CustomSwiperImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Image(
        image: AssetImage(imageUrl),
        fit: BoxFit.cover,
      ),
    );
  }
}
