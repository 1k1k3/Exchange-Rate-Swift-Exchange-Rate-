import Foundation

var shouldContinue = true

while shouldContinue {
    // Display the options to the user
    print("Please choose a currency to convert to:")
    print("1. Colombian pesos (COP)")
    print("2. Euros (EUR)")
    print("3. Korean Won (KRW)")
    print("4. Japanese yen (JPY)")
    print("5. UK pounds (GBP)")

    // Read the user's choice
    let choice = readLine()

    // Ask the user for input
    print("Enter an amount in US dollars:")
    let input = readLine()

    // Convert the input to a Double
    guard let dollars = Double(input ?? "") else {
        print("Invalid input.")
        continue
    }

    // Ask the user for the exchange rate
    print("Enter the exchange rate for the selected currency:")
    let exchangeRate = readLine()

    // Convert the exchange rate to a Double
    guard let rate = Double(exchangeRate ?? "") else {
        print("Invalid exchange rate.")
        continue
    }

    // Perform the selected conversion
    var result: Double
    var currencySymbol: String
    switch choice {
    case "1":
        result = dollars * rate
        currencySymbol = "COP"
    case "2":
        result = dollars * rate
        currencySymbol = "EUR"
    case "3":
        result = dollars * rate
        currencySymbol = "KRW"
    case "4":
        result = dollars * rate
        currencySymbol = "JPY"
    case "5":
        result = dollars * rate
        currencySymbol = "GBP"
    default:
        print("Invalid choice.")
        continue
    }

    // Print the results
    print(String(format: "$%.2f is equivalent to %.2f %@", dollars, result, currencySymbol))

    // Ask the user if they want to continue
    print("Do you want to convert another amount? (y/n)")
    let answer = readLine()
    if let answer = answer?.lowercased(), answer == "n" {
        shouldContinue = false
    }
}

print("Thank you for using the currency converter!")
