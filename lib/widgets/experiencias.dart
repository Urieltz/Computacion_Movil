import 'package:flutter/material.dart';

class experiencias extends StatelessWidget {

  final String texto;

  const experiencias({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(0, 35, 88, 1),
                                ),
                              )
                            ),
      child: Container(
        margin: EdgeInsets.only(top: 15, bottom: 15),
        child: Row(
          children: [
            Container(
              width: screenWidth*0.8,
              alignment: Alignment.centerLeft,
              child: RichText(
                softWrap: true,
                text: TextSpan(
                  text: texto,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 35, 88, 1),
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              width: screenWidth*0.12,
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Color.fromRGBO(237, 35, 56, 1),
                size: 40,
              )
            ),
          ],
        )
      ),
    );
  }
}