import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HealthFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Foods To Consume'),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Diary Products: During pregnancy, you need to consume extra protein and calcium to meet the needs of your growing little one. Dairy products like milk, cheese, and yogurt should be on the docket.'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Legumes: This group of food includes lentils, peas, beans, chickpeas, soybeans, and peanuts (aka all kinds of fabulous recipe ingredients!).'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Sweet potatoes: Sweet potatoes are not only delicious cooked about a thousand ways, they’re also rich in beta carotene, a plant compound that is converted into vitamin A in your body.'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Salmon: Smoked on a whole wheat bagel, teriyaki grilled, or slathered in pesto, salmon is a welcome addition to this list. Salmon is rich in essential omega-3 fatty acids that have a host of benefits.'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Eggs: Those incredible, edible eggs are the ultimate health food, as they contain a little bit of almost every nutrient you need. A large egg contains about 80 calories, high-quality protein, fat, and many vitamins and minerals.'),
            ),
          ],
        ),
      ),
    );
  }
}