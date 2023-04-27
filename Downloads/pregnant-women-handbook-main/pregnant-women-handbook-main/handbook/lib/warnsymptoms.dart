import 'package:flutter/material.dart';

class WarnSymp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Pregnancy Warning Symptoms'),
        backgroundColor: Colors.deepPurple,

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Call your health care provider right away if you have any of these signs::',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.call_missed_outgoing),
              title: Text('Vaginal bleeding'),
            ),
            ListTile(
              leading: Icon(Icons.mood_bad_rounded),
              title: Text('Fluid leaking from your vagina'),
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