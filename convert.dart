int string_to_int(String str) {
  return int.parse(str);
}

double string_to_double(String str) {
  return double.parse(str);
}

String int_to_string(int num) {
  return num.toString();
}

double int_to_double(int num) {
  return num.toDouble();
}


void convertanddisplay(String numstr) {
  int val = string_to_int(numstr);
  double val2 = string_to_double(numstr);

  print("String to int: $val");
  print("String to double: val2");

}


void checknum(int num) {
  if (num > 0) {
    print("$num is positive");
  } else if (num < 0) {
    print("$num is negative");
  } else {
    print("$num is zero");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }
}

void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
}


void printNumbersWithLoops() {
  // For loop: print 1 to 10
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // While loop: print 10 to 1
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  // Do-while loop: print 1 to 5
  int k = 1;
  do {
    print(k);
    k++;
  } while (k <= 5);
}


void categorizeNumbers(List<int> numbers) {
  for (int number in numbers) {
    // Print each number
    print("Number: $number");

    // Check if the number is even or odd
    if (number % 2 == 0) {
      print("$number is even.");
    } else {
      print("$number is odd.");
    }

    // Categorize the number as small, medium, or large
    switch (number) {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        print("$number is small.");
        break;
      case 11:
      case 12:
      // and so on...
      default:
        if (number > 100) {
          print("$number is large.");
        } else {
          print("$number is medium.");
        }
    }
  }
}



void main() {
  // Define and initialize variables
  int myInt = 42;
  double myDouble = 42.42;
  String myString = "Hello, Dart!";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];
  
  print("Variables Initialized:");
  print("Int: $myInt");
  print("Double: $myDouble");
  print("String: $myString");
  print("Bool: $myBool");
  print("List: $myList");

  // Conversion and display
  convertanddisplay("42");

  // Control flow examples
  checknum(5);
  checknum(-3);
  checknum(0);
  checkVotingEligibility(20);

  // Print day of the week
  printDayOfWeek(3);

  // Loops
  printNumbersWithLoops();

  // Categorize numbers in a list
  categorizeNumbers([1, 25, 5, 150, 9]);
}

