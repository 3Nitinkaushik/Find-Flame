import 'package:flutter/material.dart';

class RoundRectangleimage extends StatelessWidget {
  RoundRectangleimage({
    required this.Image,
    this.Child,
    required this.Textchild,
    super.key,
  });
  Widget? Child;
  final Widget Textchild;
  final ImageProvider Image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 27.0, left: 12),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 120,
            width: 100,
          ),
          Positioned(
            top: 10,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 85,
                height: 98.3,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image,
                  ),
                ),
                child: Child,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
                color: Colors.white),
            child: Textchild,

          )
        ],
      ),
    );
  }
}
