import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FruitsVeges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Fruits and Vegetables'),
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
              title: Text('During pregnancy, your little one depends on you to provide the nutrition they need. That’s why it’s time to make sure you’re making the best food choices for baby — and for yourself.'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Oranges. Oranges help you stay hydrated. They’re also a great source of folate, or folic acid. Folate is a B vitamin that’s very important in helping prevent brain and spinal cord defects, also known as neural tube defects.'),
            ),

            ListTile(
              leading: Icon(Icons.check),
              title: Text('Mangoes. Mangoes are another great source of vitamin C. One cup gives you 100 percentTrusted Source of your recommended daily allowance. Mangoes are also high in vitamin A.'),
            ),

            ListTile(
              leading: Icon(Icons.check),
              title: Text('Avocados. Avocados have more folate than other fruits. They’re also a great sourceTrusted Source of: vitamin C, vitamin B, vitamin K, fiber, choline, magnesium, potassium.'),
            ),


            ListTile(
              leading: Icon(Icons.check),
              title: Text('Medical professionals usually recommend eating two to four servings of fruit and four to five servings of vegetables each day.'),
            ),
          ],
        ),
      ),
    );
  }
}