import "package:flutter/material.dart";
import 'symptom.dart';

class NewSymp extends StatelessWidget {
  const NewSymp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final titleController = TextEditingController();
  String text = "No Statement Entered Yet";

  void _setText() {
    setState(() {
      text = titleController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Symptom'),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SymptomPage()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: const InputDecoration(labelText: 'New symptom'),
              controller: titleController,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: _setText,
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(8),
                backgroundColor:
                MaterialStateProperty.all(Colors.deepPurple)),
            child: const Text('Submit'),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("You just added a new symptom: "),
          Text(text),
        ],
      ),
    );
  }
}