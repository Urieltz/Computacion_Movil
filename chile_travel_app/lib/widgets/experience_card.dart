import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  // 1. Declara las variables para los parámetros
  final String imageUrl;
  final String title;
  final String daysAndDistance;
  final List<String> chips;

  // 2. Modifica el constructor para requerir los parámetros
  const ExperienceCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.daysAndDistance,
    required this.chips,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0B1A36),
      padding: const EdgeInsets.all(16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              // 3. Usa la URL del parámetro
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 180,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 4. Usa el título del parámetro
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0B1A36),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // 5. Usa el texto de días y distancia del parámetro
                  Text(
                    daysAndDistance,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    // 6. Crea los chips dinámicamente
                    children: chips.map((chipText) => Chip(
                          label: Text(chipText),
                          backgroundColor: const Color(0xFFE5EBF7),
                        )).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}