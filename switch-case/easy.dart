void main() {
  // print(printDay(7));
  // print(calculator(12, 9, '*'));
  // trafficSystem('RED');
  // printMonth(12);
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

//Month Name and Days
void printMonth(int num) {
  switch (num) {
    case 1:
    print('It is January that has 31 days');
    break;
    case 2:
    print('It is February that has 28 days');
    break;
    case 3:
    print('It is March that has 31 days');
    break;
    case 4:
    print('It is April that has 30 days');
    break;
    case 5:
    print('It is May that has 31 days');
    break;
    case 6:
    print('It is June that has 30 days');
    break;
    case 7:
    print('It is July that has 31 days');
    break;
    case 8:
    print('It is Agust that has 31 days');
    break;
    case 9:
    print('It is September that has 30 days');
    break;
    case 10:
    print('It is October that has 31 days');
    break;
    case 11:
    print('It is November that has 30 days');
    break;
    case 12:
    print('It is December that has 31 days');
    break;
  }
}
