class Bank
  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << { date: Time.now.strftime("%d/%m/%Y"), credit: amount, balance: @balance } 
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << { date: Time.now.strftime("%d/%m/%Y"), debit: amount, balance: @balance}
  end 

  def get_balance
    @balance
  end

  def print_statement
    statement = ["date || credit || debit || balance"] 
    @transactions.each do |transaction| 
      statement << "#{transaction[:date]} || #{two_decimal_places(transaction[:credit])}" + 
      " || #{two_decimal_places(transaction[:debit])} || #{two_decimal_places(transaction[:balance])}"
    end
    
    statement.join("\n")
  end
   

  private

  def two_decimal_places(number)
    return unless number
    "%0.2f" % [number] 
  end

  def time_now
  end

end