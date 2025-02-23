import 'dart:io';
import '../fundamentals/basic_programs.dart';
import 'easy.dart';

void main() {
// pascalTriangle(4);
  List<int> list = [12, 32, 1, 3, 6, 18, 5, 8, 11, 0, 15, 8];
// print('The index of targeted number in the array is: ${binarySearch(list,12)}');
// decimalToBinary(4);
  bubbleSort(list);
}

//Generate Pascal’s Triangle
void pascalTriangle(int rows) {
  // int element;

  // for (int i = 1; i <= rows; i++) {
  //   for (int j = 3; j >= i; j--) {
  //     stdout.write(' ');
  //   }
  //   for (int k = 0; k < (i * 2) - 1; k++) {

  //     element = (factorial(rows) / (factorial(k) * factorial(rows - k))).round();
  //     stdout.write(element);
  //   }
  //   print('');
  // }
}
//Binary Search Algorithm
int binarySearch(List<int> list, int target) {
  int end = list.length - 1;
  int middle = (list.length / 2).round();

  while (list[middle] != target) {
    if (list[middle] > target) {
      middle ~/= 2;
    } else {
      middle = ((middle + end) / 2).round();
    }
  }
  return middle;
}

//Convert Decimal to Binary
void decimalToBinary(int num) {
  int number = num;
  String result = '';

  while (num > 0) {
    result += (num % 2).toString();
    num ~/= 2;
  }
  print('The binary of $number is: ${reverseString(result)}');
}

//Sorting an Array Using Bubble Sort
void bubbleSort(List<int> arr) {
  int temp;

  for (int i = arr.length - 1; i >= 1; i--) {
    for (int j = 0; j < i; j++) {
      if (arr[j] > arr[j + 1]) {
        temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  print(arr);
}
