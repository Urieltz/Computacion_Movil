import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});
  final List<String> imagesCarousel1 = [
    'assets/images/carousel/carrusel1a.png',
    'assets/images/carousel/carrusel2a.png',
    'assets/images/carousel/carrusel3a.png',
    'assets/images/carousel/carrusel4a.png',
    'assets/images/carousel/carrusel5a.png',
    'assets/images/carousel/carrusel6a.png',
    'assets/images/carousel/carrusel7a.png',
    'assets/images/carousel/carrusel8a.png',
    'assets/images/carousel/carrusel9a.png',
    'assets/images/carousel/carrusel10a.png',
    'assets/images/carousel/carrusel11a.png'
  ];
  final List<String> imagesCarousel2 = [
    'assets/images/carousel/carrusel1b.png',
    'assets/images/carousel/carrusel2b.png',
    'assets/images/carousel/carrusel3b.png',
    'assets/images/carousel/carrusel4b.png',
    'assets/images/carousel/carrusel5b.png',
    'assets/images/carousel/carrusel6b.png',
    'assets/images/carousel/carrusel7b.png',
    'assets/images/carousel/carrusel8b.png',
    'assets/images/carousel/carrusel9b.png',
    'assets/images/carousel/carrusel10b.png',
    'assets/images/carousel/carrusel11b.png'
  ];
  final List<Map<String, dynamic>> imagesCarousel3 = [
      {
        "titulo":
            "Pisco bajo las estrellas: Conoce la magia del Valle del Elqui en tres días",
        "dias": "3 días - 160 KM",
        "imagen":
            "assets/images/carousel/carrusel1c.png",
        "tags": const [
          "CABALGATAS",
          "HIKING Y TREKKING",
          "CONTEMPLACIÓN DE ESTRELLAS",
          "INSTALACIONES ASTRONÓMICAS"
        ],
      },
      {
        "titulo":
            "Ruta por Museo de Azapa, Morro y las hermosas Cuevas de Anzota",
        "dias": "3 días - 22 KM",
        "imagen":
            "assets/images/carousel/carrusel2c.png",
        "tags": const [
          "CULTURA",
          "OBSERVACIÓN DE FLORA Y FAUNA",
          "MAPUCHE"
        ],
      },
      {
        "titulo":
            "De Santiago a la Patagonia: Qué hacer en Chile durante 12 días",
        "dias": "12 días - 638 KM",
        "imagen":
            "assets/images/carousel/carrusel3c.png",
        "tags": const [
          "MUSEOS",
          "OBSERVACIÓN DE FLORA Y FAUNA",
          "CULTURA",
          "AVENTURA Y DEPORTE"
        ],
      },
      {
        "titulo":
            "Circuito de playas en Bahía Inglesa",
        "dias": "3 días - 67 KM",
        "imagen":
            "assets/images/carousel/carrusel4c.png",
        "tags": const [
          "OBSERVACIÓN DE FLORA Y FAUNA",
          "PLAYAS"
        ],
      },
      {
        "titulo":
            "San Pedro de Atacama: Romance, aventura y descanso en medio del desierto",
        "dias": "5 días - 259 KM",
        "imagen":
            "assets/images/carousel/carrusel5c.png",
        "tags": const [
          "ASTROTURISMO",
          "AVENTURA Y DEPORTE",
          "TERMAS"
        ],
      },
      {
        "titulo":
            "Asómbrate con cada rincón de San Pedro de Atacama",
        "dias": "4 días - 510 KM",
        "imagen":
            "assets/images/carousel/carrusel6c.png",
        "tags": const [
          "AVENTURA Y DEPORTE",
          "OBSERVACIÓN DE FLORA Y FAUNA",
          "TERMAS Y BIENESTAR",
          "HIKING Y TREKKING"
        ],
      },
      {
        "titulo":
            "Recorre Iquique y las antiguas salitreras en el desierto",
        "dias": "3 días - 51 KM",
        "imagen":
            "assets/images/carousel/carrusel7c.png",
        "tags": const [
          "CULTURA",
          "VIDA URBANA"
        ],
      },
      {
        "titulo":
            "Recorre explorando el casco histórico de Copiapó",
        "dias": "3 días - 2 KM",
        "imagen":
            "assets/images/carousel/carrusel8c.png",
        "tags": const [
          "CULTURA",
          "VIDA URBANA",
          "VINOS Y GASTRONOMÍA"
        ],
      },
    ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const Header(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1)
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 60, right: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Home   /  ',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 35, 88, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Norte y Desierto de Atacama',
                            style: TextStyle(
                              color: Color.fromRGBO(254, 101, 101, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 18, right: 15),
                child: Column(
                  children: [

                    // Uso de WIDGET "textoEstandar"
                    textoEstandar(
                      texto: 'Norte y Desierto de Atacama',
                      fontSize: 60,
                      fontWeight: FontWeight.w700,
                      height: 1.1
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 35, right: 15),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),

                      // Uso de WIDGET "textoEstandar"
                      child: textoEstandar(texto: 'Lejos de ser inerte, el Desierto de Atacama es una zona abundante en energía, gracias a sus acogedoras culturas ancestrales y a los oasis que son fuente de vida en el desierto más árido del mundo.',
                        fontSize: 17.5,
                        fontWeight: FontWeight.w400,
                        height: 1.4
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),

                      // Uso de WIDGET "textoEstandar"
                      child: textoEstandar(texto: 'Asciende los más de 4.000 metros de altura del altiplano andino para descubrir pequeños poblados que mantienen intactas sus costumbres en medio de extremos escenarios que vale la pena fotografiar.',
                        fontSize: 17.5,
                        fontWeight: FontWeight.w400,
                        height: 1.4
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      
                      // Uso de WIDGET "textoEstandar"
                      child: textoEstandar(texto: 'Visita San Pedro de Atacama y explora paisajes únicos en el mundo. Salares, géiseres y lagunas de un intenso color azul, son parte de los lugares que te asombrarán.',
                        fontSize: 17.5,
                        fontWeight: FontWeight.w400,
                        height: 1.4
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      
                      // Uso de WIDGET "textoEstandar"
                      child: textoEstandar(texto: 'Emprende un viaje por las estrellas. Aprende más sobre los astros y las constelaciones en uno de los múltiples observatorios astronómicos de la zona norte del país.',
                        fontSize: 17.5,
                        fontWeight: FontWeight.w400,
                        height: 1.4
                      )
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 10, bottom: 20, right: 15),
                child: Column(
                  children: [
                    Image.asset('assets/images/imagen1.png')
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20, right: 15),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 3,
                      color: Color.fromRGBO(237, 35, 56, 1),
                    ),
                  )
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 9),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          
                          // Uso de WIDGET "textoEstandar"
                          textoEstandar(
                            texto: 'Destinos de Chile',
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            height: 1.3
                          ),
                        ],
                      ),
                      Row(
                        children: [

                          // Uso de WIDGET "textoEstandar"
                          textoEstandar(
                            texto: 'que te van a encantar',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 0.7
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ),
              Container(
                margin: EdgeInsets.only(left: 0, top: 50, right: 0),
                child: CarouselSlider.builder(
                  itemCount: imagesCarousel1.length,
                  itemBuilder: (BuildContext context,
                    int itemIndex,
                    int pageViewIndex
                  ){
                    return Row(
                        children: [
                          Image.asset(imagesCarousel1[itemIndex])
                        ],
                      );
                  },
                  options: CarouselOptions(
                    initialPage: 0,
                    scrollDirection: Axis.horizontal,
                    height: 560,
                    enableInfiniteScroll: false,
                    viewportFraction: 1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 0, top: 0, bottom: 30, right: 0),
                child: CarouselSlider.builder(
                  itemCount: imagesCarousel2.length,
                  itemBuilder: (BuildContext context,
                    int itemIndex,
                    int pageViewIndex
                  ){
                    return Row(
                      children: [
                        Stack(
                          alignment: AlignmentGeometry.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Image.asset(
                                imagesCarousel2[itemIndex],
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                  options: CarouselOptions(
                    initialPage: 0,
                    scrollDirection: Axis.horizontal,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.35,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 243, 243, 1)
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 20, bottom: 20, right: 15),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            width: 3,
                            color: Color.fromRGBO(237, 35, 56, 1),
                          ),
                        )
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 9),
                        child: Column(
                          children: [
                            Row(
                              children: [

                                // Uso de WIDGET "textoEstandar"
                                textoEstandar(
                                  texto: 'Descubre todas estas',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  height: 1.4
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                
                                // Uso de WIDGET "textoEstandar"
                                textoEstandar(
                                  texto: 'increíbles experiencias',
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                  height: 1
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 20, bottom: 20, right: 15),
                      child: Column(
                        children: [

                          // Uso de WIDGET "experiencias"
                          Stack(
                            children: [
                              experiencias(texto: 'Turismo indígena'),
                              SizedBox(
                                height: 65,
                                width: screenWidth,
                                child: FloatingActionButton(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0.0,
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context, 'screen3'
                                    );
                                  }
                                ),
                              ),
                              
                            ],
                          ),
                          experiencias(texto: 'Vida Urbana'),
                          experiencias(texto: 'Playas'),
                          experiencias(texto: 'Termas y bienestar'),
                          Stack(
                            children: [
                              experiencias(texto: 'Astroturismo'),
                              SizedBox(
                                height: 65,
                                width: screenWidth,
                                child: FloatingActionButton(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0.0,
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context, 'screen2'
                                    );
                                  }
                                ),
                              ),
                              
                            ],
                          ),
                          experiencias(texto: 'Cultura'),
                          experiencias(texto: 'Vinos y Gastronomía'),
                          experiencias(texto: 'Aventura y deporte'),
                          experiencias(texto: 'Naturaleza'),
                          Stack(
                            children: [
                              experiencias(texto: 'Patagonia y Antártica'),
                              SizedBox(
                                height: 65,
                                width: screenWidth,
                                child: FloatingActionButton(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0.0,
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context, 'screen4'
                                    );
                                  }
                                ),
                              ),
                              
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 50, right: 15),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 3,
                      color: Color.fromRGBO(237, 35, 56, 1),
                    ),
                  )
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 9),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          
                          // Uso de WIDGET "textoEstandar"
                          textoEstandar(
                            texto: 'Planifica tu itinerario ideal',
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            height: 1.1
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          
                          // Uso de WIDGET "textoEstandar"
                          textoEstandar(
                            texto: 'para tu viaje',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 1.1
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    Container(
                      color: Color.fromRGBO(34, 34, 56, 1),
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: SizedBox(
                        height: 550,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          itemCount: imagesCarousel3.length,
                          separatorBuilder: (_, __) => const SizedBox(width: 42),
                          itemBuilder: (context, index) {
                            final exp = imagesCarousel3[index];
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
                                    Image.asset(
                                      exp["imagen"] as String,
                                      height: 160,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            exp["titulo"] as String,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF0B1A36),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            exp["dias"] as String,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 12),
                                          Wrap(
                                            spacing: 100,
                                            runSpacing: 8,
                                            children: (exp["tags"] as List<String>).map(
                                              (tag) => Chip(
                                                label: Text(tag),
                                                backgroundColor: const Color(0xFFE5EBF7),
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
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 70, bottom: 30),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/articles/articulofondo.png'),
                    fit: BoxFit.cover
                  )
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 20, bottom: 50, right: 15),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            width: 3,
                            color: Color.fromRGBO(237, 35, 56, 1),
                          ),
                        )
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 9),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                
                                // Uso de WIDGET "textoEstandar"
                                textoEstandar(
                                  texto: 'Cosas que pueden interesarte',
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                  height: 1.1
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                
                                // Uso de WIDGET "textoEstandar"
                                textoEstandar(
                                  texto: 'Norte y Desierto de Atacama',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  height: 1.1
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Uso de WIDGET "intereses"
                    intereses(
                      direccImagen: 'assets/images/articles/articulo1.png',
                      descripcion: '¡Atardecer en el mar!\nPlayas para admirar la puesta de sol en el\nPacífico'
                    ),
                    intereses(
                      direccImagen: 'assets/images/articles/articulo2.png',
                      descripcion: '6 lugares imperdibles\nde Chile'
                    ),
                    intereses(
                      direccImagen: 'assets/images/articles/articulo3.png',
                      descripcion: '¡Vota por Chile en los\nWorld Travel Awards!'
                    ),
                    intereses(
                      direccImagen: 'assets/images/articles/articulo4.png',
                      descripcion: 'Montañas de Chile que\ndebes conocer este\n2025'
                    ),
                    Container(
                      width: 250,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: BoxBorder.all(
                          color: Color.fromRGBO(237, 35, 56, 1),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: RichText(
                        softWrap: true,
                        text: TextSpan(
                          text: 'VER TODOS LOS ARTÍCULOS',
                          style: TextStyle(
                            color: Color.fromRGBO(237, 35, 56, 1),
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            height: 1.5
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 243, 243, 1)
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 20, bottom: 20, right: 15),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            width: 3,
                            color: Color.fromRGBO(237, 35, 56, 1),
                          ),
                        )
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 9),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                
                                // Uso de WIDGET "textoEstandar"
                                textoEstandar(
                                  texto: 'Galería',
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                  height: 1.1
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                
                                // Uso de WIDGET "textoEstandar"
                                textoEstandar(
                                  texto: 'Norte y Desierto de Atacama',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  height: 1.1
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: SizedBox(
                  width: screenWidth,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth*0.5,
                                child: Image.asset(
                                  'assets/images/gallery/galeria1.png',
                                  fit: BoxFit.fitHeight,
                                  height: 270,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth*0.5,
                                child: Image.asset(
                                  'assets/images/gallery/galeria2.png',
                                  fit: BoxFit.fitHeight,
                                  height: 270,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth,
                                child: Image.asset(
                                  'assets/images/gallery/galeria3.png',
                                  fit: BoxFit.fitWidth,
                                  height: 270,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth*0.5,
                                child: Image.asset(
                                  'assets/images/gallery/galeria4.png',
                                  fit: BoxFit.fitHeight,
                                  height: 270,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth*0.5,
                                child: Image.asset(
                                  'assets/images/gallery/galeria5.png',
                                  fit: BoxFit.fitHeight,
                                  height: 270,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth,
                                child: Image.asset(
                                  'assets/images/gallery/galeria6.png',
                                  fit: BoxFit.fitWidth,
                                  height: 270,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Footer(),
            ]
          )
        )
      )
    );
  }
}
