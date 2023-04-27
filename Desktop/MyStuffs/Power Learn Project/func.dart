void main(){
  printFullName();
  printName("Nandera");
  String name = FullName();
  print(name);
  print(MyFullName("Onyango Topister Nandera"));
}
//No parameter and no return type function
void printFullName(){
  print("Topister Onyango");
}
//With parameter and no return type
void printName(String name){
  print("My name is $name");

}
//No parameter and return type
String FullName(){
  return "Topister Nandera Onyango";

}

//With parameter and return type

String MyFullName(String nam){
  return "Onyango Topister Nandera";
}