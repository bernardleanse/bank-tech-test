class Bank
  def initialize
    @balance = 0
    @deposits = []
  end

  def deposit(amount)
    @deposits << amount
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end 

  def get_balance
    @balance
  end

  def print_statement
    Time.now.strftime("%d/%m/%Y") + convert_deposits_to_2_decimal_places.join(" ")
  end

  private
  
  def convert_deposits_to_2_decimal_places
    @deposits.map { |deposit| "%0.2f" % [deposit] }
  end

end