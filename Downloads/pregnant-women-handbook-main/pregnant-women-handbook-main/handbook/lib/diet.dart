import 'package:flutter/material.dart';
import 'navBar.dart';
import 'starch.dart';
import 'proteins.dart';
import 'diary.dart';
import 'snacks.dart';
import 'fruitsVeges.dart';

class DietPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Special Diets"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),


          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StarchFood()),
              );
            },
            child: Text(
              'STARCH',
              style: TextStyle(fontSize: 16.0, color: Colors.white),

            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    )
                )
            ),

          ),

          SizedBox(height: 20,),




          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FruitsVeges()),
              );
            },
            child: Text(
              'FRUIT & VEG',
              style: TextStyle(fontSize: 16.0, color: Colors.white),

            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    )
                )
            ),

          ),
          SizedBox(height: 20,),

          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProteinsFood()),
              );
            },
            child: Text(
              'PROTEINS',
              style: TextStyle(fontSize: 16.0, color: Colors.white),

            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    )
                )
            ),

          ),

          SizedBox(height: 18,),


          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DiaryFood()),
              );
            },
            child: Text(
              'DIARY',
              style: TextStyle(fontSize: 16.0, color: Colors.white),

            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    )
                )
            ),

          ),

          SizedBox(height: 20,),
          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SnacksFood()),
              );
            },
            child: Text(
              'HEALTHY SNACKS',
              style: TextStyle(fontSize: 16.0, color: Colors.white),

            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    )
                )
            ),

          ),


          SizedBox(height: 70,),

          Container(
            color: Colors.deepPurple,
            height: 195,

            padding: EdgeInsets.all(16),



            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(

                  children: [
                    Image.asset(
                      'assets/Images/meditation.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'MY EXERCISES',
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/Images/pregnancy.png',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'PREGNANCY TRACKER',
                      style: TextStyle(fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/Images/calendar.png',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'MY CALENDAR',
                      style: TextStyle(fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),
                    ),
                  ],
                ),
              ],
            )
            ,
          ),
        ],


      ),
    );
  }
}
