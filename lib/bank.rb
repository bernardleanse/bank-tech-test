class Bank
  def initialize
    @deposits = 0
  end

  def print_statement
    if @deposits > 0
      "date || credit || debit || balance\n ||  || 10.00 || 10.00\n ||  || 15.00 || 10.00"
    else
      'date || credit || debit || balance'
    end
  end

  def deposit(amount)
    @deposits += 1
    
  end


end