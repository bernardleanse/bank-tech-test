## Building simple Bank Account Tech Test

# How to Use
Clone Repo, Enter directory and launch IRB
```
git clone https://github.com/bernardleanse/bank-tech-test.git
cd bank-tech-test
irb
```
IRB Setup
```
require './lib/bank.rb'
bank = Bank.new
```
Deposit using:
`bank.deposit(10)`
Withdraw using:
`bank.withdraw(5)`
Print Statement using:
`bank.print_statement`

# Process

I took this challenge as a way to try and improve my tdd process, particularly 
keeping steps as small as possible, hard-coding at first. I do find this challenging
especially when I know these kind of solutions feel wrong, but the fact is it's about
having the least amount of implementation code possible to keep the system behaving the way
the spec has set out it should behave. Tried to follow Red - Green - Refactor as best
as I could.