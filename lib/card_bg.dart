import 'package:flutter/material.dart';

class CardBg extends StatelessWidget {
  final String imagePath;

  const CardBg({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover
        ),
      ),
      width: double.infinity,
      height: 200,
    );
  }
}
