import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MorningExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Morning Exercise when pregnant'),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Exercising is one way to improve mental and physical well-being during and after pregnancy.'),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Starchy foods are an important source of energy, some vitamins and fibre, and help you to feel full without containing too many calories. They include bread, potatoes, breakfast cereals, rice, pasta, noodles, maize, millet, oats, yams and cornmeal. If you are having chips, go for oven chips lower in fat and salt.'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('These foods should make up just over a 3rd of the food you eat. Instead of refined starchy (white) food, choose wholegrain or higher-fibre options such as wholewheat pasta, brown rice or simply leaving the skins on potatoes.'),
            ),
          ],
        ),
      ),
    );
  }
}