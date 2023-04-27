import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our Mission',
              style: Theme.of(context).textTheme.headline5,

            ),
            SizedBox(height: 8),
            Text(
              'To provide high-quality products and services to our dear pregnant women.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 8),
            Text(
              'Founded in 2023, we are here to serve our dear community.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 8),
            Text(
              'Values:',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 15),
            Text(
              '* Customer satisfaction is our top priority',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              '* We strive for continuous improvement',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              '* We value honesty and integrity in all our actions',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 15),
            Text(
              'Services we offer:',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Prenatal Education Tips'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Postnatal Education Tips'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Social Support'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Food Consumption Health Tips'),
            ),

            Text(
              'Follow Us:',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('Facebook'),
              onTap: () => launchUrl(Uri.parse('https://www.facebook.com/')),
            ),


          ],
        ),
      ),
    );
  }
}