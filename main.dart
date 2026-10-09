//Stephanie Abby 102975
//Lab TMA3084
import 'dart:io';

void main() {
  double totalPrice = 0;
  String? option;
  String? size;

  print("===Welcome to Pizza order calculator!===");
  print("Did you order a pizza? \n[Y] to continue & [N] to exit ->");
  option = stdin.readLineSync() ?? ''.trim().toUpperCase();

  while (option != 'n') {
    print("\nWhat pizza size did you order?");
    print("Type [S]=small, [M]=medium, [L]=large ->");
    size = stdin.readLineSync() ?? ''.trim().toUpperCase();

    double price = 0;
    switch (size) {
      case 's':
        price = 5;
        break;

      case 'm':
        price = 7;
        break;

      case 'l':
        price = 10;
        break;

      default:
        print("Invalid input..Please try again!");
        continue;
    }

    print("\nHow many did you ordered?: ");
    int amount = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    //to calculate the total price pizza ordered
    totalPrice += amount * price;
    print("Your total price would be: \$$totalPrice");

    print("\nType [Y] to continue and [N] to exit ->");
    option = stdin.readLineSync() ?? ''.trim().toUpperCase();
  }

  print("===Thank you for ordering ! :) ===");
}
