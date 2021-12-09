

import 'package:flutter/cupertino.dart';
import 'package:practice/main.dart';

void main(){
  //runApp( MyApp());

 int x =  myfunc(6,7);
 String y = myfuncString();
  String a = myfunString(value: "gowtham");
  String b = funAnnotation();
  String c = funAnnotationRequired(name: "Required");
 print(x);
 print(y);
  print(a);
  print(b);
  print(c);

}

//Positional Parameters
int myfunc(int num, int value){
  return num + value;
}

//Optional Parameters
String myfuncString([String name = "non" , String value = "non"]){
  return name +" ,"+ value;
}

//Optional Parameters using specific parameter
String myfunString({String name = "non" , String value = "non"}){
  return name +" ,"+ value;
}

//Optional Parameters using @required
//This @required will intimate the user to provide the value for that specific parameter but its optional
String funAnnotation({ @required String name = "non" , String value = "non"}){
  return name +" ,"+ value;
}

//Optional Parameters using required
//This required will intimate the user to provide the value for that specific parameter without any optional
String funAnnotationRequired({ required String name  , String value = "non"}){
  return name +" ,"+ value;
}