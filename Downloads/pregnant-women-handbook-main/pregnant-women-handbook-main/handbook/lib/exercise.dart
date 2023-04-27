import 'package:flutter/material.dart';
import 'navBar.dart';
import 'morningExercise.dart';

class ExercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's Work Out"),
      ),
      body: Column(
        children: [
          SizedBox(height: 35,),


          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MorningExercise()),
              );
            },
            child: Text(
              'MORNING',
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

          SizedBox(height: 35,),




          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavBar()),
              );
            },
            child: Text(
              'AFTERNOON',
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
          SizedBox(height: 35,),

          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavBar()),
              );
            },
            child: Text(
              'EVENING',
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






          SizedBox(height: 158,),

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
