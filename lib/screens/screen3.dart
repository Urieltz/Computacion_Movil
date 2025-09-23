import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turismo Indígena',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color.fromRGBO(0, 35, 88, 1),
        scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      home: const InicioPage(),
    );
  }
}

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  // creación de la barra superior:
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80, // bar
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0le_roEpezBZUQ0VKQCBUYJW8wghfqQguCw&s", // logo Chile Travel
            width: 200,
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Color.fromRGBO(0, 35, 88, 1)), // 3. Color del icono ajustado
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Bandera_de_Espa%C3%B1a_%28sin_escudo%29.svg/250px-Bandera_de_Espa%C3%B1a_%28sin_escudo%29.svg.png", // bandera
              width: 30,
              height: 20,
              errorBuilder: (_, __, ___) => const Icon(Icons.flag, color: Colors.red),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Color.fromRGBO(0, 35, 88, 1)), // 3. Color del icono ajustado
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // El Título que da comienzo
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 40, right: 15),
              child: Text(
                "Turismo Indígena",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 20, 58),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30, right: 15),
              child: Text(
                "Conoce las costumbres y tradiciones de los pueblos originarios de Chile. Recorridos arqueológicos, gastronomía local y ritos ancestrales son solo algunas de las alternativas de las que puedes a lo largo de Chile, desde Arica a Magallanes. ¡Ven, conéctate y mira a Chile a través de los ojos las culturas originarias!",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            //espaciado
            const SizedBox(height: 40),

            //Sección de "Siente" y "vive" con widget: SectionWidget
            SectionWidget(
              title: 'Siente',
              text: 'Vive la cultura mapuche con distintas experiencias, desde dormir en una ruca, probar los platos típicos y aprender la medicina originaria.',
              imageUrl: 'https://storage.googleapis.com/chile-travel-cdn/2021/08/Araucania-mapuches-CH-DST235-Blog-Portada.jpg',
            ),
            SectionWidget(
              title: 'Vive',
              text: 'Sumérgete en los misterios de Rapa Nui, un lugar donde los paisajes, los bailes, la música y la comida son testimonio de una magia ancestral que se mantiene viva.',
              imageUrl: 'https://storage.googleapis.com/chile-travel-cdn/2021/07/Eventos_Baile_Tapati.jpeg',
            ),
            const SizedBox(height: 40),
            TituloWidget(
              tituloSuperior: 'Tradiciones indígenas',
              tituloInferior: 'Que te van a encantar',
            ),
            const SizedBox(height: 40),
            //galeria de las tradiciones
            const Gallery(),
            const SizedBox(height: 40),
            TituloWidget(
              tituloSuperior: 'Planifica un itinerario',
              tituloInferior: 'Ideal para tu viaje',
            ),
            const SizedBox(height: 40),
            ExperienceCard(
              imageUrl: 'https://storage.googleapis.com/chile-travel-cdn/2021/07/Descubre-la-magia-de-Rapa-Nui_Di%CC%81a-4-Ahu-Tongarik-1536x1152.jpg',
              title: 'Descubre la magia de Rapa Nui junto a sus playas, volcanes y atractivos lugares ocultos',
              daysAndDistance: '4 días - 154 km',
              chips: const ['ARQUEOLOGIA', 'AVENTURA Y DEPORTE', 'CULTURA'],
            ),
            const SizedBox(height: 40),
            TituloWidget(
              tituloSuperior: 'Si te gusta la cultura originaria',
              tituloInferior: 'Estos destinos son para ti',
            ),
            const SizedBox(height: 40),
            AdvancedSearch(
              prominentLocations: const [
                {
                  "nombre": "Hanga Roa",
                  "imagen": "https://storage.googleapis.com/chile-travel-cdn/2021/07/HangaRoa_prin-min-150x150.jpg",
                },
                {
                  "nombre": "San Pedro de Atacama",
                  "imagen": "https://cdn.getyourguide.com/img/location/5cced28f55c2f.jpeg/99.jpg",
                },
                {
                  "nombre": "Tierra del Fuego",
                  "imagen": "https://tse4.mm.bing.net/th/id/OIP.cpDH-pPACjDV06maE4bD1QHaEx?rs=1&pid=ImgDetMain&o=7&rm=3.jpg",
                },
              ],
              locationOptions: const [
                DropdownMenuItem(
                  value: "norte",
                  child: Text("Norte y desierto de Atacama"),
                ),
                DropdownMenuItem(
                  value: "centro",
                  child: Text("Centro, Santiago y Valparaíso"),
                ),
                DropdownMenuItem(value: "rapa", child: Text("Rapa Nui")),
                DropdownMenuItem(
                  value: "sur",
                  child: Text("Sur, lagos y volcanes"),
                ),
                DropdownMenuItem(
                  value: "patagonia",
                  child: Text("Patagonia y Antártica"),
                ),
              ],
              experienceOptions: const [
                DropdownMenuItem(
                  value: "Aventura y Deporte",
                  child: Text("Aventura y Deporte"),
                ),
                DropdownMenuItem(value: "aventura", child: Text("Aventura")),
                DropdownMenuItem(
                  value: "Observación",
                  child: Text("Observación"),
                ),
                DropdownMenuItem(
                  value: "Arqueología",
                  child: Text("Arqueología"),
                ),
              ],
              buttonText: 'BUSCAR',
            ),
            const SizedBox(height: 40),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

