import 'package:flutter/material.dart';

class AdvancedSearch extends StatelessWidget {
  // Parámetro para la lista de lugares destacados (Hanga Roa, etc.)
  final List<Map<String, String>> prominentLocations;
  // Parámetros para los dropdowns y el botón
  final List<DropdownMenuItem<String>> locationOptions;
  final List<DropdownMenuItem<String>> experienceOptions;
  final String buttonText;

  const AdvancedSearch({
    super.key,
    required this.prominentLocations,
    required this.locationOptions,
    required this.experienceOptions,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Estira los elementos para que ocupen todo el ancho
        children: [
          // Sección de la galería de imágenes
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: prominentLocations.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: NetworkImage(prominentLocations[index]["imagen"]!),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Color.fromRGBO(0, 0, 0, 0.5),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      prominentLocations[index]["nombre"]!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),

          // Primer Dropdown (¿Dónde?)
          Text(
            "¿Dónde?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField(
            items: locationOptions,
            onChanged: (val) {},
            decoration: InputDecoration(
              hintText: "Selecciona lugar",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Segundo Dropdown (¿Qué tipo de experiencia deseas?)
          Text(
            "¿Qué tipo de experiencia deseas?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField(
            items: experienceOptions,
            onChanged: (val) {},
            decoration: InputDecoration(
              hintText: "Selecciona tipo de experiencia",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 30),

          // Botón de búsqueda
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEA5758),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Buscando experiencias...")),
                );
              },
              child: Text(
                buttonText,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}