require 'bank'

describe Bank do
  let(:bank) { Bank.new }
  it 'prints a statement' do
    expect(bank.print_statement).to eq('date || credit || debit || balance')
  end

  it 'lets you deposit money and see it on the statement' do
    bank.deposit(10)
    first_statement_entry = bank.print_statement.split("\n").last # The last line of the statement
    expect(first_statement_entry.split(" || ").last).to eq "10.00" # Where the balance goes 
  end
end