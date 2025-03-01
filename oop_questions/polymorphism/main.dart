import 'student.dart';
import 'teacher.dart';
void main() {
  Student person1 = Student('Ahmad', 21, 'Software Eng') ;
  person1.displayInfo();
  Teacher teacher1 = Teacher('Ali', 42, 'Master');
  teacher1.displayInfo();
  }