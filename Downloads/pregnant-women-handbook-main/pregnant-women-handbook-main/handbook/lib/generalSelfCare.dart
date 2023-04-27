import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class GeneralSelfCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('General Self Care'),
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Eat a variety of colours every day. Your baby needs a range of vitamins and minerals as it grows and develops.'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Get active on most days. Talk to your obstetrician about exercising during pregnancy – they can give you advice on what’s best for you.'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Drink plenty of water. As part of your pregnancy routine, it’s important to stay hydrated. Generally, this means aiming to drink at least two litres of water each day. Dehydration can have serious consequences for your baby so must be avoided.'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Schedule some you time every day. Building a routine that helps you maintain good mental health during your pregnancy will benefit both you and your baby.'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Get a good night’s rest. Considering how physically and emotionally demanding pregnancy can be, it’s no wonder a good sleep can make all the difference. Unfortunately, having difficulty sleeping is a common problem during pregnancy because of hormonal changes, pain and discomfort.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}