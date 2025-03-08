import 'student.dart';
import 'car.dart';
void main() {
  Student student = Student();
  student.name = 'Ali';
  student.age = 23;
  print(student.displyInfo);

  Car car = Car('Toyota', 'Corrola');
  print(car.displayInfo());

}
