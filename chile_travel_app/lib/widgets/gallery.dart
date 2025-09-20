
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  String mainImage =
      "https://storage.googleapis.com/chile-travel-newsite-static-content/2022/02/8de91562-araucania-mapuches-ch-dst235-blog-portada-1.jpg";

  final List<Map<String, String>> options = [
    {
      "title": "Mapuche",
      "image":
          "https://storage.googleapis.com/chile-travel-newsite-static-content/2022/02/8de91562-araucania-mapuches-ch-dst235-blog-portada-1.jpg",
    },
    {
      "title": "Aymara",
      "image":
          "https://storage.googleapis.com/chile-travel-cdn/2021/07/alto_el_loa_1.jpg",
    },
    {
      "title": "Rapa Nui",
      "image": "https://storage.googleapis.com/chile-travel-cdn/2021/08/Rapa-Nui-3-1-e1585081895422-300x154.jpg",
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
                onTap: () {
                  setState(() {
                    mainImage = options[index]["image"]!;
                  });
                },
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