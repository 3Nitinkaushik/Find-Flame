
import 'package:flutter/material.dart';

class Roundimagebutton extends StatelessWidget {
  const Roundimagebutton({required this.image,

    super.key,
  });
  final ImageProvider<Object> image;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        foregroundDecoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(fit: BoxFit.cover,
                image: image)),
      ),
    );
  }
}

