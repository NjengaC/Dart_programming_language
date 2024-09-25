void collectionsExample() {
  // List: Allows duplicates, maintains order
  List<String> fruits = ["Apple", "Banana", "Orange"];
  print("Initial Fruits List: $fruits");
  fruits.add("Grapes"); // Adding an element
  fruits.remove("Banana"); // Removing an element
  print("Fruits List: $fruits");

  // Set: No duplicates, does not maintain order
  Set<int> numbers = {1, 2, 3, 4, 5};
  print("Initial Numbers Set: $numbers");
  numbers.add(5); // Duplicate will be ignored
  numbers.add(6); // Adding a new element
  numbers.remove(3); // Removing an element
  print("Numbers Set: $numbers");

  // Map: Key-value pairs
  Map<String, int> ages = {"John": 25, "Jane": 30};
  print("Initial Ages Map: $ages");
  ages["Jake"] = 22; // Adding a new key-value pair
  ages.remove("John"); // Removing a key-value pair
  print("Ages Map: $ages");

  // Iterating over collections
  print("Iterating over List:");
  for (var fruit in fruits) {
    print(fruit);
  }

  print("Iterating over Set:");
  for (var number in numbers) {
    print(number);
  }

  print("Iterating over Map:");
  ages.forEach((key, value) {
    print("$key is $value years old");
  });
}

void main()
{
  collectionsExample();
}
