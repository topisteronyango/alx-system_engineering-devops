import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SnacksFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Snacks in pregnancy'),
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
              title: Text('If you get hungry between meals, try not to eat snacks that are high in fat and/or sugar, such as sweets, biscuits, crisps or chocolate. Instead, choose something healthier, such as:'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Small sandwiches or pitta bread with grated cheese, lean ham, mashed tuna, salmon, or sardines, with salad'),
            ),

            ListTile(
              leading: Icon(Icons.check),
              title: Text('Salad vegetables, such as carrot, celery or cucumber'),
            ),

            ListTile(
              leading: Icon(Icons.check),
              title: Text('Vegetable and bean soups'),
            ),

            ListTile(
              leading: Icon(Icons.check),
              title: Text('A small bowl of unsweetened breakfast cereal, or porridge, with milk'),
            ),

            ListTile(
              leading: Icon(Icons.check),
              title: Text('a small slice of malt loaf, a fruited tea cake or a slice of toasted fruit bread'),
            ),
          ],
        ),
      ),
    );
  }
}