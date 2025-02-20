void main() {
  // checkArmstrongNumber(153);
  findCollatzSequence(3);
}

//Armstrong Number
void checkArmstrongNumber(int input) {
  int number = input;
  int numberOfDigits = 0;
  int total = 0;

  while (input > 0) {
    numberOfDigits++;
    input ~/= 10;
  }
  input = number;
  while (input > 0) {
    int digit = input % 10;
    int power = digit;
    for (int i = 1; i < numberOfDigits; i++) {
      power *= digit;
    }
    total += power;
    input ~/= 10;
  }
  if(number == total){
    print('$number is an Armstrong number');
  }else{
    print('$number is not an Armstrong number!');
  } 
}

//Collatz Sequence (Hsilstone numbers)
void findCollatzSequence(int number){
  int counter = 0;

  while(number > 1){
  if(number % 2 == 0){
    number ~/= 2;
  }else if (number % 2 != 0){
    number = (number * 3) + 1;
  }
  counter++;
  }
  print('$counter steps to reach 1');
}