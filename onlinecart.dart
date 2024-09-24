// Simulated Online Shopping Cart System

// Function to calculate the total with optional tax parameter
double calculateTotal(List<double> itemPrices, {double taxRate = 0.0}) {
  double total = 0.0;

  // Summing all prices in the list
  for (double price in itemPrices) {
    total += price;
  }

  // Adding tax if applicable
  total += total * taxRate;
  return total;
}

// Anonymous function to filter out items with price below threshold
List<double> filterItems(List<double> itemPrices, double threshold) {
  return itemPrices.where((price) => price >= threshold).toList();
}

// Higher-order function to apply a discount
List<double> applyDiscount(List<double> itemPrices, double Function(double) discountFunc) {
  return itemPrices.map((price) => discountFunc(price)).toList();
}

// Function to calculate discount based on percentage
double percentageDiscount(double price, double discountPercent) {
  return price * (1 - discountPercent / 100);
}

// Recursive function to calculate factorial (used for special discount)
int calculateFactorialDiscount(int num) {
  if (num <= 1) {
    return 1;
  } else {
    return num * calculateFactorialDiscount(num - 1);
  }
}

void main() {
  // Initial item prices in the cart
  List<double> itemPrices = [12.5, 8.0, 15.0, 22.5, 5.0];

  // Step 1: Filter out items below a threshold (e.g., $10)
  List<double> filteredItems = filterItems(itemPrices, 10.0);
  print("Items after filtering (above \$10): $filteredItems");

  // Step 2: Apply a 10% discount to all items in the cart
  List<double> discountedItems = applyDiscount(filteredItems, (price) => percentageDiscount(price, 10));
  print("Items after applying 10% discount: $discountedItems");

  // Step 3: Calculate total with tax (optional parameter: taxRate = 16%)
  double totalBeforeFactorialDiscount = calculateTotal(discountedItems, taxRate: 0.16);
  print("Total before factorial discount (with tax): \$${totalBeforeFactorialDiscount.toStringAsFixed(2)}");

  // Step 4: Calculate a special discount based on the factorial of the number of items
  int factorialDiscount = calculateFactorialDiscount(discountedItems.length);
  print("Factorial discount (based on number of items): $factorialDiscount%");

  // Step 5: Apply the factorial discount to the final price
  double finalTotal = percentageDiscount(totalBeforeFactorialDiscount, factorialDiscount.toDouble());
  print("Final total after applying factorial discount: \$${finalTotal.toStringAsFixed(2)}");
}

