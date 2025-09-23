import 'package:flutter/material.dart';

class textoEstandar extends StatelessWidget {

  final String texto;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;

  const textoEstandar({
    super.key,
    required this.texto,
    required this.fontSize,
    required this.fontWeight,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      softWrap: true,
      text: TextSpan(
        text: texto,
        style: TextStyle(
          color: Color.fromRGBO(0, 35, 88, 1),
          fontFamily: 'Poppins',
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: height
        ),
      ),
    );
  }
}