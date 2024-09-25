import 'package:intl/intl.dart';

void dateTimeExample() {
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // Formatting Date
  String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
  print("Formatted Date: $formattedDate");

  // Parsing Date
  String dateString = "2024-09-25 14:30";
  DateTime parsedDate = DateFormat('yyyy-MM-dd HH:mm').parse(dateString);
  print("Parsed Date: $parsedDate");

  // Date Difference
  DateTime futureDate = now.add(Duration(days: 5));
  Duration difference = futureDate.difference(now);
  print("Difference between dates: ${difference.inDays} days");
}

void main() => dateTimeExample();
