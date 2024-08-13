/*
SwiftBank by Bakhrom Usmanov
We’ll use properties and access control to build a structure that represents a secure personal bank account. We will be able to initialize the account with a password and initial deposit, make deposits, make withdrawals, and check the balance.

For our bank to remain competitive and earn lots of new customers, we will offer a cash bonus every time a user makes a deposit. Additionally, we’ll configure a property observer to let us know whenever our bank balance is set so that we can display alerts.

We’ll apply the concept of structures, private methods, property observers, and type properties.
*/
struct SwiftBank{
  //bonus for deposit
  static let depositBonusRate: Double = 0.01
  private var hasReceivedBonus: Bool = false

  private let password: String
  private var balance: Double = 0 {
    didSet{
      if self.balance < 100{
        displayLowBalanceMessage()
      }
    }
  }

  init(password: String, initialDeposit: Double){
    self.password = password
    makeDeposit(depositAmount: initialDeposit)
  }

  //to check if user is valid
  private func isValid(enteredPassword: String) -> Bool{
    return enteredPassword == self.password ? true : false
  }
  private func finalDepositWithBonus(deposit: Double) -> Double {
    return deposit + (deposit * SwiftBank.depositBonusRate)
  }
  private func displayLowBalanceMessage(){
    print("Alert: Your balance is under $100")
  }

  mutating func makeDeposit(depositAmount: Double){
    //check for negative depositAmount
    if depositAmount <= 0{
      print("Error: Cannot make deposit negative or zero amount of money.")
      return
    }

    //check for first time bonus
    if depositAmount >= 1000 && !hasReceivedBonus{
      let depositWithBonus = finalDepositWithBonus(deposit: depositAmount)
      self.balance += depositWithBonus
      hasReceivedBonus = true
      print("Making a deposit of $\(depositAmount) with a bonus rate. The final amount deposited is $\(depositWithBonus).")
      return
    }
    
    //classic withdrawal
    self.balance += depositAmount
    print("Making a deposit of $\(depositAmount).")
  }

  mutating func makeWithdrawal(withdrawalAmount: Double, usingPassword: String){
    //check for negative withdrawalAmount
    if withdrawalAmount <= 0{
      print("Error: Cannot make withdraw negative or zero amount of money.")
      return
    }

    //check if withdrawalAmount is more than balance in the bank
    if withdrawalAmount > self.balance{
        print("Error: Not enough balance. Cannot make withdrawal.")
        return
      }

    //check if password is valid
    if isValid(enteredPassword: usingPassword){
      print("Making a $\(withdrawalAmount) withdrawal")
      balance -= withdrawalAmount
    } else {
      print("Error: Invalid password. Cannot make withdrawal.")
      return 
    }
  }

  func displayBalance(usingPassword: String) {
    //check if password is valid
    if isValid(enteredPassword: usingPassword){
      print("Your current balance is $\(balance)")
    } else {
      print("Error: Invalid password. Cannot retrieve balance.")
      return
    }
  }
}

//Sample myAccount for Testing Swift Bank
var myAccount = SwiftBank(password: "1234", initialDeposit: 500.0)
myAccount.makeDeposit(depositAmount: 50)
myAccount.displayBalance(usingPassword: "1234")
myAccount.makeWithdrawal(withdrawalAmount: 100, usingPassword: "124")
myAccount.makeWithdrawal(withdrawalAmount: 470, usingPassword: "1234")
myAccount.displayBalance(usingPassword: "1234")
myAccount.makeWithdrawal(withdrawalAmount: 1000, usingPassword: "1234")
myAccount.displayBalance(usingPassword: "1234")
myAccount.makeDeposit(depositAmount: 1000)
myAccount.makeDeposit(depositAmount: 1000)
myAccount.displayBalance(usingPassword: "1234")
myAccount.makeDeposit(depositAmount: -50)
myAccount.makeWithdrawal(withdrawalAmount: -50, usingPassword: "1234")
