import 'dart:io';
import '../fundamentals/basic_programs.dart';

void main() {
// pascalTriangle(4);
List<int> list = [1,2,3,4,5,6,7,8,9,10,12,17];
print(binarySearch(list,12));
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
  int end = list.length -1;
  int middle = (list.length / 2).round();
  
  while(list[middle] != target) {
    if(list[middle] > target){
        middle ~/= 2;
    }else{
      middle = ((middle + end) / 2).round();
    }
  }
  return middle;
}