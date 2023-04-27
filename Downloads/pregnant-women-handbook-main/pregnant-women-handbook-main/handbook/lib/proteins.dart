import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProteinsFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Proteins in pregnancy'),
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
              title: Text('Eat some protein-rich foods every day. Sources of protein include: beans, pulses, fish, eggs, meat (but avoid liver)poultry, nuts'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Choose lean meat, remove the skin from poultry, and try not to add extra fat or oil when cooking meat.'),
            ),

            ListTile(
              leading: Icon(Icons.check),
              title: Text('Make sure poultry, burgers, sausages and whole cuts of meat such as lamb, beef and pork are cooked very thoroughly until steaming all the way through. Check that there is no pink meat, and that juices have no pink or red in them.'),
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