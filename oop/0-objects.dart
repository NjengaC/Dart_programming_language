class BankAccount {
  // Private variable to hold the balance
  double _balance;

  // Constructor to initialize the account with a balance
  BankAccount(this._balance);

  // Getter method to access the private balance
  double get balance => _balance;

  // Method to deposit money (adds to the balance)
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$${amount}. New Balance: \$${_balance}");
    } else {
      print("Invalid deposit amount");
    }
  }

  // Method to withdraw money (subtracts from the balance)
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrew: \$${amount}. New Balance: \$${_balance}");
    } else {
      print("Invalid withdrawal amount or insufficient funds.");
    }
  }
}


// SavingsAccount inherits from BankAccount
class SavingsAccount extends BankAccount {
  double _interestRate;

  SavingsAccount(double balance, this._interestRate) : super(balance);

  // Method to apply interest to the balance
  void applyInterest() {
    double interest = balance * _interestRate;
    deposit(interest); // Use the deposit method from BankAccount
    print("Applied interest of \$${interest}. New Balance: \$${balance}");
  }
}


// CheckingAccount inherits from BankAccount and overrides withdraw
class CheckingAccount extends BankAccount {
  double _overdraftLimit;

  CheckingAccount(double balance, this._overdraftLimit) : super(balance);

  // Overriding the withdraw method to allow overdraft
  @override
  void withdraw(double amount) {
    if (amount > 0 && amount <= (balance + _overdraftLimit)) {
      super.withdraw(amount);
    } else {
      print("Cannot withdraw \$${amount}. Overdraft limit exceeded.");
    }
  }
}



// Abstract class for Accounts
abstract class Account {
  double balance;

  Account(this.balance);

  // Abstract method to deposit money
  void deposit(double amount);

  // Abstract method to withdraw money
  void withdraw(double amount);
}

// Subclass implementing the abstract methods
class FixedDepositAccount extends Account {
  FixedDepositAccount(double balance) : super(balance);

  @override
  void deposit(double amount) {
    print("Deposits are not allowed in Fixed Deposit Account.");
  }

  @override
  void withdraw(double amount) {
    print("Withdrawals are not allowed in Fixed Deposit Account until maturity.");
  }
}



void main() {
  // Encapsulation example
  BankAccount myAccount = BankAccount(1000);
  myAccount.deposit(500);
  myAccount.withdraw(200);

  print("\n");

  // Inheritance example
  SavingsAccount mySavings = SavingsAccount(1000, 0.05);
  mySavings.applyInterest();
  mySavings.withdraw(500);

  print("\n");

  // Polymorphism example
  CheckingAccount myChecking = CheckingAccount(1000, 500);
  myChecking.withdraw(1200); // within overdraft limit
  myChecking.withdraw(1500); // exceeds overdraft limit

  print("\n");

  // Abstraction example
  FixedDepositAccount myFixedDeposit = FixedDepositAccount(5000);
  myFixedDeposit.deposit(1000);
  myFixedDeposit.withdraw(500);
}

