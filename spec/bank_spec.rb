require 'bank'

describe Bank do
  let(:bank) { Bank.new }
  let(:date_today) { Time.now.strftime("%d/%m/%Y") }

  describe "#deposit" do

    it 'deposits a user specific amount of money' do
      expect { bank.deposit 10 }.to change { bank.get_balance }.by(10)  
      expect { bank.deposit 20 }.to change { bank.get_balance }.by(20)
    end

  end

  describe "#withdraw" do

    it 'withrdraws a user specific amount of money' do
      expect { bank.withdraw 10 }.to change { bank.get_balance }.by(-10)
      expect { bank.withdraw 20 }.to change { bank.get_balance }.by(-20)
    end

  end

  describe "#print_statement" do
    let(:date) { Time.now.strftime("%d/%m/%Y") }
    it "shows the date of a transaction" do
      bank.deposit 10
      expect(bank.print_statement).to include date
    end

    it "shows the amount credited" do
      bank.deposit 10
      expect(bank.print_statement).to include "10.00"
    end

    it "shows two different deposits" do
      bank.deposit 10
      bank.deposit 15
      expect(bank.print_statement).to include("10.00").and include "15.00"
    end

    it "shows accumulating balance" do
      bank.deposit 10
      bank.deposit 20
      expect(bank.print_statement).to include("10.00").twice.and include("30.00").and include("20.00")
    end

    it "shows one deposit in the desired format" do
      bank.deposit 10
      expect(bank.print_statement).to eq "date || credit || debit || balance
#{date} || 10.00 ||  || 10.00"
    end

    it "shows a withdrawal in the desired format" do
      bank.deposit 10
      bank.withdraw 5
      expect(bank.print_statement).to eq "date || credit || debit || balance
#{date} || 10.00 ||  || 10.00
#{date} ||  || 5.00 || 5.00"
    end
  end

end
