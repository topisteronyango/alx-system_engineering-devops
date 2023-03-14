import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'navBar.dart';

void main() => runApp(CalendarPage());

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();

}

class _CalendarPageState extends State<CalendarPage> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _firstDay = DateTime(2023, 1, 1);
  DateTime _lastDay = DateTime(2023, 12, 31);
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOff;
  late DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        drawer: NavBar(),

        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("MY CALENDAR"),

          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              width: width,
              //height: height *0.1,
              padding: EdgeInsets.all(12.0),
              alignment: Alignment.center,
              child: Text(
                'Welcome To My Calendar',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),

              ),
            ),

            //SizedBox(height: 3.0,),

            TableCalendar(

              calendarFormat: _calendarFormat,
              focusedDay: _focusedDay,
              firstDay: _firstDay,
              lastDay: _lastDay,
              rangeSelectionMode: _rangeSelectionMode,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              onRangeSelected: (startDay, endDay, focusedDay) {
                setState(() {
                  _focusedDay = focusedDay;
                });
              },
            ),

            
            SizedBox(height: 68,),

            Container(
              color: Colors.deepPurple,
              height: 150,
              padding: EdgeInsets.all(16),



              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Column(

                    children: [
                      Image.asset(
                        'assets/Images/pregnancy.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 16.0,),
                      Text(
                        'PREGNANCY \n TRACKER',
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
                        'assets/Images/book.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(height: 16.0,),
                      Text(
                        'EDUCATE ME',
                        style: TextStyle(fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/Images/advice.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(height: 16.0,),
                      Text(
                        'MY DOCTOR',
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
     ),
);
}
}
