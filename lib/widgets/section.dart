import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final String title;
  final String text;
  final String imageUrl;

  const SectionWidget({
    super.key,
    required this.title,
    required this.text,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'cursive',
              color: Colors.indigo,
            ),
            textAlign: TextAlign.center,
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ],
      ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}