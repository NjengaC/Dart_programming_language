void stringManipulationExample() {
  // String Concatenation
  String firstName = "John";
  String lastName = "Doe";
  String fullName = firstName + " " + lastName; // Concatenation using `+`
  print("Full Name (Concatenation): $fullName");

  // String Interpolation
  String interpolatedString = "Hello, my name is $firstName $lastName!";
  print("String Interpolation: $interpolatedString");

  // Substring Extraction
  String extracted = fullName.substring(0, 4); // Extract "John"
  print("Substring: $extracted");

  // Case Conversion
  String upperCase = fullName.toUpperCase();
  String lowerCase = fullName.toLowerCase();
  print("Uppercase: $upperCase");
  print("Lowercase: $lowerCase");

  // Reversing a String
  String reversed = fullName.split('').reversed.join('');
  String reversed2 = fullName.reversed();
  print("Reversed2 String: $reversed2");
  print("Reversed String: $reversed");

  // Counting Length
  int length = fullName.length;
  print("Length of the string: $length");
}


void main() {
 stringManipulationExample();
} 
