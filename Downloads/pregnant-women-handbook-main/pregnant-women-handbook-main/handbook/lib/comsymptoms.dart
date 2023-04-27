import 'package:flutter/material.dart';

class ComSymp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Common Symptoms'),
        backgroundColor: Colors.deepPurple,

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Common Pregnancy Symptoms:',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.call_missed_outgoing),
              title: Text('Nausea with or without vomiting. Morning sickness, which can strike at any time of the day or night, often begins one month after you become pregnant.'),
            ),
            ListTile(
              leading: Icon(Icons.mood_bad_rounded),
              title: Text('Increased urination. You might find yourself urinating more often than usual. The amount of blood in your body increases during pregnancy, causing your kidneys to process extra fluid that ends up in your bladder.'),
            ),
            ListTile(
              leading: Icon(Icons.personal_injury_rounded),
              title: Text('Tender, swollen breasts. Soon after conception, hormonal changes might make your breasts sensitive or sore.'),
            ),
            ListTile(
              leading: Icon(Icons.fastfood_rounded),
              title: Text('Food cravings and aversions. When you\'re pregnant, you might become more sensitive to certain odors and your sense of taste might change.'),
            ),
            ListTile(
              leading: Icon(Icons.monitor_heart),
              title: Text('Heartburn. Pregnancy hormones relaxing the valve between your stomach and esophagus can allow stomach acid to leak into your esophagus, causing heartburn. To prevent heartburn, eat small, frequent meals and avoid fried foods, citrus fruits, chocolate, and spicy or fried foods.'),
            ),
          ],
        ),
      ),
    );
  }
}