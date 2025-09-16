import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network('https://i.pinimg.com/280x280_RS/36/9d/a4/369da4163bb4bebb7b85ecf86372a84e.jpg'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Row(
          children: [
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Home   /  ',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Norte y Desierto de Atacama',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
