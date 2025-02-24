void main() {
  // print(printDay(7));
  // print(calculator(12, 9, '*'));
  // trafficSystem('RED');
}

//Day of the Week
String printDay(int num) {
  String? result;
  switch (num) {
    case 1:
      result = 'Saterday';
      break;
    case 2:
      result = 'Sunday';
      break;
    case 3:
      result = 'Monday';
      break;
    case 4:
      result = 'Tuesday';
      break;
    case 5:
      result = 'Wednesday';
      break;
    case 6:
      result = 'Thursday';
      break;
    case 7:
      result = 'Friday';
      break;
  }
  return result!;
}

//Simple Calculator
int calculator(int a, int b, String operator) {
  int? result;
  switch (operator) {
    case '+':
      result = a + b;
      break;
    case '-':
      result = a - b;
      break;
    case '*':
      result = a * b;
      break;
    case '/':
      result = a ~/ b;
      break;
  }
  return result!;
}

//Traffic Light System
void trafficSystem(String lightColor) {
  switch (lightColor.toLowerCase()) {
    case 'red':
      print('Stop');
      break;
    case 'yellow':
      print('Slow down');
      break;
    case 'green':
      print('Go');
      break;
  }
}
