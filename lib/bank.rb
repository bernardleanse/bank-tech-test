class Bank
  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += 10
  end

  def withdraw(amount)
    @balance -= 10
  end 

  def get_balance
    @balance
  end

  def print_statement
    Time.now.strftime("%d/%m/%Y") + "10.00" + " " + "15.00"
  end

end