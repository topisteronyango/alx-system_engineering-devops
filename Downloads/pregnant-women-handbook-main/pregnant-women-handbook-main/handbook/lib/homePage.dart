import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'navBar.dart';
import 'calendar.dart';
import 'doctor.dart';
import 'educate.dart';
import 'symptom.dart';
import 'diet.dart';
import 'exercise.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Pregnant Women\'s Handbook'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

    return Scaffold(
        drawer: NavBar(),

        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),


        body: Container(
          width: width,
          height: height,
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Container(
                    width: width,
                    height: height *0.08,
                    alignment: Alignment.center,
                    child: Text(
                      'Digital Pregnant Women’s Handbook',

                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,),

                    ),
                  ),
                  Container(
                    width: width,
                    // height: height *0.1,
                    alignment: Alignment.center,
                    child: Text(
                      'Click on each button to get access to our services',

                      // style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,),

                    ),
                  ),

                  SizedBox(height: 5.0,),

                  OutlinedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NavBar()),
                      );
                    },
                    child: Text(
                      'ABOUT PREGNANT WOMEN’S HANDBOOK',
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
                  SizedBox(height: 25.0,),

                  OutlinedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SymptomPage()),
                      );
                    },
                    child: Text(
                      'KNOW PREGNANCY SYMPTOMS',
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
                        MaterialPageRoute(builder: (context) => MyAppointmentsPage()),
                      );
                    },
                    child: Text(
                      'BOOK APPOINTMENT WITH DOCTOR',
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
                        MaterialPageRoute(builder: (context) => EducateMePage()),
                      );
                    },
                    child: Text(
                      'GET PREGNANCY FREE EDUCATION',
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
                        MaterialPageRoute(builder: (context) => DietPage()),
                      );
                    },
                    child: Text(
                      'SPECIAL DIET FOR PREGNANCY',
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
                        MaterialPageRoute(builder: (context) => ExercisePage()),
                      );
                    },
                    child: Text(
                      'MY EXERCISES',
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
                        MaterialPageRoute(builder: (context) => CalendarPage()),
                      );
                    },
                    child: Text(
                      'MY CALENDAR',
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

                ]),
          ),

        ));
  }

}