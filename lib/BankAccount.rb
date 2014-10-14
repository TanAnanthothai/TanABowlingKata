class BankAccount
   def initialize(name, balance)  
    # Instance variables  
    @balance = balance  
    @accountNumber = accountNumber  
    @name = name  
  end  
  def self.number_of_transactions(numbers)
    puts 'number_of_transactions'  
  end
  def self.withdraw(numbers)
    puts 'withdraw'  
  end
  def self.deposit(numbers)
    puts 'deposit'  
  end
end

bank1 = BankAccount.new('Tan Ananthothai', 1234567)  