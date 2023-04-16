import 'package:flutter/material.dart';

class PinkCircleNumber extends StatelessWidget {
  final String number;

  const PinkCircleNumber({required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.pink,
      ),
      child: Center(
        child: Text(
          number,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      width: 20,
      height: 20,
    );
  }
}