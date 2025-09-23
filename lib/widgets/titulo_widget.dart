import 'package:flutter/material.dart';

class TituloWidget extends StatelessWidget {
  // 1. Declara las variables para los textos
  final String tituloSuperior;
  final String tituloInferior;

  // 2. Requiere los parámetros en el constructor
  const TituloWidget({super.key, required this.tituloSuperior, required this.tituloInferior});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 5,
            color: Colors.red,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tituloSuperior,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              Text(
                tituloInferior,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}