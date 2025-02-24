void main() {
  checkArmstrongNumber(151);
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
  print(total == number);
  print(total);
}
