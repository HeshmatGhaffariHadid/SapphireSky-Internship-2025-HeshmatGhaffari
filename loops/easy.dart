import 'dart:io';
void main (){
  // printUpTo100();
  // print(sumNuturalNumber(3));
  // multiplicationTable();
  // print(reverseNumber(1234));
  print(digitCounter(11));

   
}
//print 1 to 100
void printUpTo100(){
  for(int i = 1; i <= 100; i++){
    print(i);
  }
}
//Sum of first N nutural numbers
double sumNuturalNumber(int n){
  double sum = n * (n + 1) / 2;
  return sum;
}
//Multiuplication table
void multiplicationTable(){
  stdout.write('Please enter a number to check it\'s multiplication table: ');
  String input = stdin.readLineSync()!;
  int number = int.parse(input);
    for(int i = 1; i <= 10; i++){
      print('$i * $number: ${number * i}');
    }
}
//Reverse a number
int reverseNumber(int number){
  int reversedNum = 0;
while(number > 0){
  int digit = number % 10;
  reversedNum = reversedNum * 10 + digit;
  number ~/= 10;
}
return reversedNum;
}
//Count digits in a number
int digitCounter(int number){
  int counter = 0;
  while (number > 0){
    counter ++;
    number  ~/= 10;
  }
  return counter;
}