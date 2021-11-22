require 'bank'

describe Bank do
  let(:bank) { Bank.new }
  let(:date_today) { Time.now.strftime("%d/%m/%Y") }

  describe "#deposit" do

    it 'deposits a user specific amount of money' do
      expect{ bank.deposit 10 }.to change { bank.get_balance }.by(10)  
    end

  end

  describe "#withdraw" do

    it 'withrdraws a user specific amount of money' do
      expect { bank.withdraw 10 }.to change { bank.get_balance }.by(-10)
    end

  end

end