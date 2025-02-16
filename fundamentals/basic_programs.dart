import 'dart:io';
void main (){

String result = evenOddChecker();
print (result);
  
}

String evenOddChecker(){
  stdout.write('Please enter a number: ');
  String? scanner = stdin.readLineSync();
  int input = int.parse(scanner!);
  String result;
  input % 2 == 0 ? result = 'The input is even' : result =  'The input is odd'; 
  return result;
}