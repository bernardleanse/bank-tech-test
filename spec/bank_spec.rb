require 'bank'

describe Bank do
  let(:bank) { Bank.new }
  it 'prints a statement' do
    expect(bank.print_statment).to eq('date || credit || debit || balance')
  end
end