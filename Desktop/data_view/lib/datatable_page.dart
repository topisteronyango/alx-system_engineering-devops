import 'package:flutter/material.dart';

class DataTablePage extends StatelessWidget {
  const DataTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable Page'),
      ),
      body: DataTable(
        columns: [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Age')),
          DataColumn(label: Text('Address')),
          DataColumn(label: Text('ID')),


        ],
        rows: List.generate(
          100,
              (index) {
            return DataRow(
              cells: [
                DataCell(Text('Student $index')),
                DataCell(Text('${index * 10}')),
                DataCell(Text('$index$index')),
                DataCell(Text('$index$index$index')),


              ],
            );
          },
        ),
      ),
    );
  }
}
