#include <iostream>
#include <string>

class BankAccount {
private:
    std::string accountHolder;
    double balance;

public:
    // Constructor to initialize the account
    BankAccount(std::string holderName, double initialBalance) {
        accountHolder = holderName;
        balance = initialBalance;
    }

    // Function to deposit money into the account
    void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            std::cout << "Deposited $" << amount << " into " << accountHolder << "'s account." << std::endl;
        } else {
            std::cout << "Invalid deposit amount." << std::endl;
        }
    }

    // Function to withdraw money from the account
    void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            std::cout << "Withdrawn $" << amount << " from " << accountHolder << "'s account." << std::endl;
        } else {
            std::cout << "Invalid withdrawal amount or insufficient balance." << std::endl;
        }
    }

    // Function to check the account balance
    double getBalance() {
        return balance;
    }
};

int main() {
    // Create a bank account for John with an initial balance of $1000
    BankAccount johnAccount("John", 1000.0);

    // Deposit and withdraw money
    johnAccount.deposit(500.0);
    johnAccount.withdraw(200.0);

    // Check the account balance
    double johnBalance = johnAccount.getBalance();
    std::cout << "John's account balance: $" << johnBalance << std::endl;

    return 0;
}

