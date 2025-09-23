import 'package:flutter/material.dart';

class intereses extends StatelessWidget {

  final String direccImagen;
  final String descripcion;

  const intereses({
    super.key,
    required this.direccImagen,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0),
        ),
      ),
      child: SizedBox(
        width: screenWidth*0.9,
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  width: (screenWidth*0.9)*0.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                    child: Image.asset(
                      direccImagen,
                      fit: BoxFit.fitHeight,
                      height: 250,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: (screenWidth*0.9)*0.26,
                      height: 40,
                      child: Container(
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          color: Color(0xFFE5EBF7),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)
                          )
                        ),
                        child: RichText(
                          softWrap: true,
                          text: TextSpan(
                            text: 'Aventura',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 35, 88, 1),
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              height: 1.2
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: (screenWidth*0.9)*0.5,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: RichText(
                          softWrap: true,
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            text: descripcion,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 35, 88, 1),
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              height: 1.3
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: (screenWidth*0.9)*0.5,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: RichText(
                              softWrap: true,
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'DESCUBRE MÁS',
                                style: TextStyle(
                                  color: Color.fromRGBO(237, 35, 56, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Color.fromRGBO(237, 35, 56, 1),
                          size: 40,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}