import 'dart:io';

import '../switch-case/hard.dart';

void main() {
  findPrime();
}
//1- Print Prime numbers from 1 - 100
void findPrime() {
  List primeNums = [];
  bool isPrime;
  for (int i = 1; i < 100; i+=2) {
    isPrime = false;
    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        isPrime = true;
      }
    }
    if(!isPrime) {
      primeNums.add(i);
    }
  }
  print(primeNums.join(', '));
}
