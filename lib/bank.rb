class Bank
  def initialize
    @balance = 0
    @deposits = []
  end

  def deposit(amount)
    @balance += amount
    @deposits << { credit: amount, balance: @balance } 
  end

  def withdraw(amount)
    @balance -= amount
  end 

  def get_balance
    @balance
  end

  def print_statement
    "date || credit || debit || balance" +
    "\n" +
    Time.now.strftime("%d/%m/%Y") + 
    " || " +
    two_decimal_places(@deposits.first[:credit]) +
    " || || " +
    two_decimal_places(@deposits.first[:balance])
  end

  private

  def two_decimal_places(number)
    "%0.2f" % [number] 
  end

end