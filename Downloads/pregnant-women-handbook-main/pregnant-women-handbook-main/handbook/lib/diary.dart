import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DiaryFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Diary in pregnancy'),
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
              title: Text('Dairy foods such as milk, cheese, fromage frais and yoghurt are important in pregnancy because they contain calcium and other nutrients that you and your baby need.'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Choose low-fat varieties wherever possible, such as semi-skimmed, 1 percent fat or skimmed milk, low-fat and lower-sugar yoghurt and reduced-fat hard cheese.'),
            ),

            ListTile(
              leading: Icon(Icons.check),
              title: Text('If you prefer dairy alternatives, such as soya drinks and yoghurts, go for unsweetened, calcium-fortified versions.'),
            ),

            ListTile(
              leading: Icon(Icons.check),
              title: Text('Try to eat 2 portions of fish each week, 1 of which should be oily fish such as salmon, sardines or mackerel. Find out about the health benefits of fish and shellfish. There are some types of fish you should avoid when you\'re pregnant or planning to get pregnant, including shark, swordfish and marlin.'),
            ),
          ],
        ),
      ),
    );
  }
}