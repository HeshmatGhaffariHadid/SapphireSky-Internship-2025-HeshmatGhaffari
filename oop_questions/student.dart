
// 2- Define and provide an example of encapsulation in JavaScript.
class Student {
late String _name;
late int _age;

set name(String newName) => this._name = newName;
set age (int age) => this._age = age;

String get displyInfo => 'The student\'s name is: $_name\nThe Studen\'s age is: $_age';

}