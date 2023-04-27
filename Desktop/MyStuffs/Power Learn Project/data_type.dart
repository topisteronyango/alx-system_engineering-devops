void main(){
  //Strings
  String myString = "This is a string";
  String myStr = 'This is also a string';
  print(myStr);
  print(myStr.runes);
  print(myString);

  //Integers: Dart only supports int and double
  int mynum = 23;
  print(mynum);
  double myDouble = 10.5;
  print(myDouble);

  //Maps
  Map myMap = {
    "firstName" : "Topister",
    "age": 85,
    "Occupation":"Student",
  };
  print(myMap);
  //printing an ietm from a map
  print(myMap['firstName']);

  //Add item to a map
  myMap["Country"] = "Kenya";
  print(myMap);

  //Removing item from a map
  myMap.remove("age");
  print(myMap);

  //Runes: are the special strings use to represent some syntax. Enable you to create
  //things e.g emojis and special characters
  var laughsymbol = '\u{1f600}';
  var heartsymbol = '\u2665';

  print(laughsymbol);
  print(heartsymbol);

  //Lists
  //dynamic list
  List myList = ["Potatoes", "Oranges", 2, 3.5];
  print(myList);

  //String List only
  List<String> firstList = ["Topister", "Onyango"];
  print(firstList);

  //Integer list only
  List<int> intList = [3, 4];
  print(intList);


  //Double List only
  List<double> doubleList = [4.5, 6, 70.2];
  print(doubleList);

  //Boolean
  bool myBoolean = true;
  print(myBoolean);

}