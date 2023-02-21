//A homepage with a ListView of ListTile widgets that navigate to
// the ListViewPage, GridViewPage, and DataTablePage respectively,
// when tapped.


import 'package:flutter/material.dart';
import 'listview_page.dart';
import 'gridview_page.dart';
import 'datatable_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Data Views Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Data Views',
            style: TextStyle(color: Colors.black),

          ),
          backgroundColor: Colors.red,
          centerTitle: true,

        ),

        //ListView widget with ListTile children, each of which has an onTap
        // function that navigates to the corresponding page
        body: ListView(

          children: [
            SizedBox(height: 6,),
            Text('Tap on each item to see how different dataview has been implemented',
              style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            //ListTile widget which has an onTap
            // function that navigates to the ListViewPage
            ListTile(
              title: Text('ListView'),
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewPage()),
                );

              },
            ),

            //ListTile widget which has an onTap
            // function that navigates to the GridViewPage
            ListTile(
              title: Text('GridView'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridViewPage()),
                );
              },
            ),

            //ListTile widget which has an onTap
            // function that navigates to the DataTablePage
            ListTile(
              title: Text('DataTable'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataTablePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
