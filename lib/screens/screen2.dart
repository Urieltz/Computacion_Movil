import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
//Esta clase representa la pantalla principal del Astroturismo//
//Contiene el header, secciones, experiencias y footer//

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(), // widget independiente
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Astroturismo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF002358),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "¡Vive un viaje a las estrellas en Chile! Constelaciones, planetas, estrellas fugaces y todo tipo de astros se hacen presentes cuando cae la noche, gracias a los maravillosos cielos chilenos, los más limpios de todo el hemisferio sur. Aprovecha los más de 300 días despejados al año y la escasa contaminación lumínica del norte del país para contemplar las estrellas a través de algunos de los observatorios científicos más potentes del mundo entero.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins', // fuente Poppins
                  fontSize: 16, // tamaño 16px
                  fontWeight: FontWeight.w400, // peso 400
                  height: 1.5, // line-height
                  color: Color(0xFF002358), // azul del párrafo
                ),
              ),
            ),
            const SizedBox(height: 20),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBiYjf6jTXxb1dACRHOJ5zHM-mXqBXEBCXNQ&s",
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            const SizedBox(height: 20),
            const SectionWidget(
              title: "Siente",
              text:
                  "En La Serena, Valle del Elqui, San Pedro de Atacama, Antofagasta e Iquique encontrarás agencias que se encargan de transportar, dar alojamiento y proveer de equipos de observación a los viajeros.",
              imageUrl:
                  "https://storage.googleapis.com/chile-travel-cdn/2021/08/Siente_astroturismo_1-2048x1367.jpg",
            ),
            const SectionWidget(
              title: "Vive",
              text:
                  "Si eres un verdadero amante de la astronomía, no dejes de conocer las instalaciones de algunos de los observatorios científicos más potentes del mundo entero. Proyectos como ALMA, Tololo y Paranal esperan tu visita para mostrarte la tecnología de punta que se emplea para la investigación del universo.",
              imageUrl:
                  "https://storage.googleapis.com/chile-travel-cdn/2021/08/Video_astroturismo.jpg",
            ),
            const InteractiveGallery(),
            const ExperienceCard(),
            const ExtraExperiences(),
            const AdvancedSearch(),
            const Footer(), // widget independiente
          ],
        ),
      ),
    );
  }
}

//SECCIÓN SIENTE-VIVE//
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200,
        ),

        const SizedBox(height: 28),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 3,
                height: 40,
                color: Color(0xFFED2338), // línea roja
              ),
              const SizedBox(width: 9),
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'cursive', //FUENTE SIENTE Y VIVE//
                  fontSize: 45,
                  fontWeight: FontWeight.w400,
                  height: 0.6,
                  color: Color(0xFF002358),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1.5,
              color: Color(0xFF002358),
            ),
          ),
        ),

        const SizedBox(height: 32),
      ],
    );
  }
}

//GALERÍA//
class InteractiveGallery extends StatefulWidget {
  const InteractiveGallery({super.key});

  @override
  State<InteractiveGallery> createState() => _InteractiveGalleryState();
}

class _InteractiveGalleryState extends State<InteractiveGallery> {
  String mainImage =
      "https://www.elovallino.cl/wp-content/uploads/2023/02/p6_turismo_astronomico-696x464.jpg";

  final List<Map<String, String>> options = [
    {
      "title": "Contemplación de estrellas",
      "image":
          "https://www.elovallino.cl/wp-content/uploads/2023/02/p6_turismo_astronomico-696x464.jpg",
    },
    {
      "title": "Visitas a observatorios",
      "image":
          "https://petitfute.twic.pics/medias/photo/originale/04/8b/313343-antofagasta-very-large-telescope-paranal-observatory.jpg",
    },
    {
      "title": "Instalaciones astronómicas",
      "image": "https://cdn.eso.org/images/newsfeature/ann13016a.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          mainImage,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200,
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: options.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () =>
                    setState(() => mainImage = options[index]["image"]!),
                child: Container(
                  width: 120,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: NetworkImage(options[index]["image"]!),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    color: Colors.black54,
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      options[index]["title"]!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

//TARJETA EXPERIENCIA//
class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 41, 27, 82),
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
              child: Image.network(
                "https://storage.googleapis.com/chile-travel-cdn/2023/07/a16621e3-cajondelmaipo_rafting_003-1536x1024.png",
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
                  const Text(
                    "A pocos kilómetros de Santiago: Qué hacer y qué comer en el Cajón del Maipo",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0B1A36),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "2 días - 294 KM",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: const [
                      Chip(
                        label: Text(
                          "CULTURA",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Color(0xFF002358),
                          ),
                        ),
                        backgroundColor: Color(0xFFE5E9EE),
                      ),
                      Chip(
                        label: Text(
                          "CONTEMPLACIÓN DE ESTRELLAS",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Color(0xFF002358),
                          ),
                        ),
                        backgroundColor: Color(0xFFE5E9EE),
                      ),
                      Chip(
                        label: Text(
                          "HIKING Y TREKKING",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Color(0xFF002358),
                          ),
                        ),
                        backgroundColor: Color(0xFFE5E9EE),
                      ),
                      Chip(
                        label: Text(
                          "MONTAÑISMO Y ESCALADA",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Color(0xFF002358),
                          ),
                        ),
                        backgroundColor: Color(0xFFE5E9EE),
                      ),
                    ],
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

//CARRUSEL DE EXPERIENCIAS EXTRA//
class ExtraExperiences extends StatelessWidget {
  const ExtraExperiences({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> experiencias = [
      {
        "titulo":
            "Pisco bajo las estrellas: Conoce la magia del Valle del Elqui en tres días",
        "dias": "3 días - 160 KM",
        "imagen":
            "https://storage.googleapis.com/chile-travel-cdn/2024/03/2efa9b9f-observatorio_gosch_07-2-1536x1025.jpg",
        "tags": const [
          "CONTEMPLACIÓN DE ESTRELLAS",
          "INSTALACIONES ASTRONÓMICAS",
          "PUEBLOS ORIGINARIOS",
          "PATRIMONIOS DE LA HUMANIDAD",
        ],
      },
      {
        "titulo":
            "San Pedro de Atacama: Romance, aventura y descanso en medio del desierto",
        "dias": "5 días - 259 KM",
        "imagen":
            "https://storage.googleapis.com/chile-travel-cdn/2021/11/6e1e279a-shutterstock_1076155628-scaled-1536x946.jpg",
        "tags": const ["ASTROTURISMO", "AVENTURA Y DEPORTE", "TERMAS"],
      },
      {
        "titulo":
            "A pocos Kilómetros de Santiago: Qué hacer y qué comer en el Cajón del Maipo",
        "dias": "2 días - 294 KM",
        "imagen":
            "https://storage.googleapis.com/chile-travel-cdn/2023/07/a16621e3-cajondelmaipo_rafting_003-1536x1024.png",
        "tags": const [
          "CULTURA",
          "CONTEMPLACION DE ESTRELLAS",
          "HIKING Y TREKKING",
          "MONTAÑISMO Y ESCALADA",
        ],
      },
    ];

    return Container(
      color: const Color.fromARGB(255, 41, 27, 82),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 600,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: experiencias.length,
          separatorBuilder: (_, __) => const SizedBox(width: 12),
          itemBuilder: (context, index) {
            final exp = experiencias[index];

            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.82,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 4,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //IMAGEN//
                    Image.network(
                      exp["imagen"] as String,
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                    //CONTENIDO//
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            exp["titulo"] as String,
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0B1A36),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            exp["dias"] as String,
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: (exp["tags"] as List<String>)
                                .map(
                                  (tag) => Chip(
                                    label: Text(
                                      tag,
                                      style: const TextStyle(
                                        fontFamily: "Poppins",
                                        color: Color(0xFF002358),
                                      ),
                                    ),
                                    backgroundColor: const Color(0xFFE5E9EE),
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

//BUSCADOR//
class AdvancedSearch extends StatelessWidget {
  const AdvancedSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final lugares = [
      {
        "nombre": "Antofagasta",
        "imagen":
            "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT9e9UZSuWqyoMprgdCi8SWAXw8cBXgxB_jKc5PgIx8MIQ5IhUt",
      },
      {
        "nombre": "San Pedro de Atacama",
        "imagen":
            "https://cdn.getyourguide.com/img/location/5cced28f55c2f.jpeg/99.jpg",
      },
      {
        "nombre": "La Serena y Coquimbo",
        "imagen":
            "https://storage.googleapis.com/chile-travel-cdn/2021/03/la-serena_.jpg",
      },
      {
        "nombre": "Valle del Elqui",
        "imagen":
            "https://media.admagazine.com/photos/65b3e06b96b1e96023673cd4/4:3/w_2248,h_1686,c_limit/valle%20del%20elqui-montan%CC%83as.jpg",
      },
      {
        "nombre": "Cajón del Maipo",
        "imagen":
            "https://storage.googleapis.com/chile-travel-cdn/2021/03/El-morado-sernatur-DST66-1024x576-1.jpeg",
      },
    ];

    return Stack(
      children: [
        Image.network(
          "https://thumbs.dreamstime.com/b/vista-elevada-de-la-ciudad-antofagasta-chile-por-noche-156274210.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
          height: 500,
        ),

        // Cuadro gris
        Container(
          height: 380,
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFE5E9EE),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Lista de lugares
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lugares.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 140,
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: NetworkImage(lugares[index]["imagen"]!),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.4),
                              BlendMode.darken,
                            ),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          lugares[index]["nombre"]!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 12),

                // Dropdown
                DropdownButtonFormField(
                  items: const [
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
                  onChanged: (val) {},
                  decoration: const InputDecoration(
                    labelText: "¿Dónde?",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Color(0xFF002358),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Color(0xFF002358),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Color(0xFF002358),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Dropdown
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: "romance", child: Text("Romance")),
                    DropdownMenuItem(
                      value: "aventura",
                      child: Text("Aventura"),
                    ),
                    DropdownMenuItem(value: "relajo", child: Text("Relajo")),
                  ],
                  onChanged: (val) {},
                  decoration: const InputDecoration(
                    labelText: "¿Qué tipo de experiencia deseas?",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Color(0xFF002358),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Color(0xFF002358),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Color(0xFF002358),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18),

                // Botón buscar
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Buscando experiencias...")),
                    );
                  },
                  child: const Text(
                    "BUSCAR",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
