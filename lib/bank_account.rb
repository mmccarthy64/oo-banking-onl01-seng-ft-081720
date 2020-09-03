class BankAccount
  attr_reader :name
  attr_accessor :balance, :status
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(new_deposit)
    @balance += new_deposit
  end
  
  def display_balance
    "Your balance is $#{self.balance}."
  end
  
  def valid?
    if status = "closed" || balance < 0
      false
    else
      true
    end
  end
  
  def close_account
    self.status = "closed"
  end

end
