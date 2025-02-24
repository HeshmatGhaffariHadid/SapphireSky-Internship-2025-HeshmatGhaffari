import 'dart:developer';
import 'dart:ffi';

void main() {
  print(printTollFee('bike'));
}
//Roman Numeral Converter
String printRomanNumber(int number) {
  switch (number) {
    case 1:
      return 'I';
    case 2:
      return 'II';
    case 3:
      return 'III';
    case 4:
      return 'IV';
    case 5:
      return 'V';
    case 6:
      return 'VI';
    case 7:
      return 'VII';
    case 8:
      return 'VIII';
    case 9:
      return 'IX';
    case 10:
      return 'X';
    default:
      return 'Invalid input!';
  }
}

//Zodiac Sign Finder
void findZodiacSign(String) {}

//Discount System Based on Membership
String countDiscount(String memberType) {
  int discount;
  switch (memberType.toLowerCase()) {
    case 'gold':
      discount = 50;
      break;
    case 'silver':
      discount = 25;
      break;
    case 'bbronze':
      discount = 10;
      default:
      discount = 0;
  }
  return 'Your purchase discount is: $discount%';
}

// Automated Toll Booth System
String printTollFee(String vehicleType) {
  switch (vehicleType.toLowerCase()) {
    case 'car':
    return '\$2 - \$10 per trip';
     case 'truck':
    return '\$5 - \$50 per trip';
     case 'bike':
    return '\$1 - \$5 per trip';
    default :
    return 'Invalid input';
  }
}
// Music Playlist Controller
String printCommand(String command) {
  switch (command.toLowerCase()) {
    case 'play' :
    return 'Music is playing...';
    case 'pause':
    return 'Music is pausing';
    case 'next':
    return 'Playing the next music';
    case 'previous':
    return 'Playing the previous music';
    default:
    return 'The command is invalid';
  }
}
