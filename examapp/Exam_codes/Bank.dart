class Bank {
  int _balance = 0; // private balance -> can't access outside the file
  int x = 10; // not private-> can be accessed from outside the file

  void depositMoney(int amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount");
    } else {
      print("Invalid amount");
    }
  }

  void withdrawMoney(int amount) {
    if (amount <= _balance && amount > 0) {
      _balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient balance");
    }
  }

  int viewBalance() {
    return _balance;
  }
}
