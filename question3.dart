// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐
class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType; 
  

  BankAccount(this.accountNumber, this.accountHolder, this.accountType) : balance = 0.0;
  

  void deposit(double amount) {
    balance += amount;
    print("Deposited \$${amount.toStringAsFixed(2)} to $accountHolder's account.");
  }

  void withdraw(double amount) {
    if (amount<=balance){
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)} from $accountHolder's account.");
    }
    else{
      print("Insufficient funds in $accountHolder's account!");
    }  
  }
  
  double getBalance() {
    return balance; 
  }

  void displayAccountInfo() {
    print("Account Holder: $accountHolder");
    print("Account Number: $accountNumber");
    print("Account Type: $accountType");
    print("Balance: \$${balance.toStringAsFixed(2)}");
    print("--------------------------");
  }
}

void main() {

  BankAccount account1 = BankAccount("12345", "Alice", "Savings");
  BankAccount account2 = BankAccount("67890", "Bob", "Checking");
  BankAccount account3 = BankAccount("11111", "Charlie", "Savings");
  
  account1.deposit(1000.0);
  account2.deposit(500.0);
  account3.deposit(2000.0);
  
  account1.withdraw(200.0);
  account2.withdraw(100.0);
  
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();
  
  account2.withdraw(1000.0); 
}
