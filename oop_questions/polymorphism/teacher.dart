import 'person.dart';
class Teacher extends Person {
  String _name; 
  int _age;
  String _degree;

  Teacher(this._name, this._age, this._degree):super(_name, _age);

  void displayInfo () {
    print('$_name is a teacher, and he is $_age years old. His scientific degree is: $_degree');
  }
}