void main() {
  String name = "john Doe";
  String city = "Nairobi";
  String favfood = "Rice";
  String home = "Kenya";
  //lets print this
  print("My name is $name  and my home is $home, $city. I love eating $favfood ");
  print("My favorite food is ${favfood}");
  //length of strings(property of the string)
  print(home.length);
  //refer to specific character in the string using its index
  print(name[6]);
  // print(city[5]);
  //string functions
  //to uppercase
  print(city.toUpperCase());
  print(city.toLowerCase());
  print(name.toUpperCase());
  //see if a character is inside the string

  print(city.indexOf("b"));
  //print(name.indexOf("o"));
  print(name.contains("p"));

  //string concatenation- adding two or more string variables
  String greeting = "Hello";
  String greeting2 = " World";
  print(greeting + greeting2);
  print(greeting + " " + greeting2);

  //string interpolation -adding string variables to a string/sentence
  // print("The greeting of each language is ${greeting + greeting2}");
  var myname = "John";
  print("My name is $myname");
}
