import 'dart:ffi';

import 'person.dart';
class Student extends Person {
  String _name;
  int _age;
  String _major;

  Student(this._name, this._age, this._major):super(_name,_age);


  @override
  void displayInfo (){
    print('$_name is a student, he is $_age years old. His major is $_major.');
  }
}