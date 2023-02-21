import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Page'),
        backgroundColor: Colors.deepOrange,

      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(
          50,
              (index) {
            return Card(
              child: Center(
                child: Text('Student $index'),
              ),
            );
          },
        ),
      ),
    );
  }
}
