import 'package:flutter/material.dart';

class Custom_Card extends StatelessWidget {
  const Custom_Card({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 180,
          height: 230,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(text)
      ],
    );
  }
}
