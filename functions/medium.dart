void main() {
  isPrime(53);
}
//Check if a Number is Prime
void isPrime(int number) {
  bool result = true;
  for (int i = 2; i < number; i++) {
    if (number % i == 0) result = false;
  }
  result
      ? print('$number is a prime number')
      : print('$number is not a prime number');
}
