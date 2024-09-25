import 'dart:io';
import 'package:intl/intl.dart';

void main() async {
  // Step 1: String Manipulation
  print("Enter a string: ");
  String userInput = stdin.readLineSync() ?? '';
  String reversedInput = userInput.split('').reversed.join('');
  print("User's String: $userInput");
  print("Reversed String: $reversedInput");

  // Step 2: Store results in a List
  List<String> results = [];
  results.add(reversedInput);

  // Step 3: Save results to a file
  File outputFile = File('results.txt');
  await outputFile.writeAsString("Reversed String: $reversedInput\n", mode: FileMode.append);

  // Step 4: Log date and time
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
  await outputFile.writeAsString("Logged at: $formattedDate\n", mode: FileMode.append);

  print("Data saved to file.");
}

