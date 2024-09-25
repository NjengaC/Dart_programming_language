// Define an enum called Day
enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

void main() {
  // Create a variable of type Day
  Day today = Day.monday;

  // Use a switch statement to perform actions based on the enum value
  switch (today) {
    case Day.monday:
      print('Start of the work week!');
      break;
    case Day.friday:
      print('Almost the weekend!');
      break;
    case Day.saturday:
    case Day.sunday:
      print('Weekend!');
      break;
    default:
      print('Midweek days.');
  }

  // Print all possible values of the enum
  print('All days of the week:');
  for (var day in Day.values) {
    print(day);
  }

  // Get the name of an enum value
  print('The name of the enum value is: ${today.name}');
}
