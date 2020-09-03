class Transfer
  # your code here
  attr_accessor :sender, :reciever, :amount, :status
  
  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @status = 'pending'
    @amount = amount
    
  end
  
  def both_valid?
    if sender.valid? && reciever.valid?
      true
    end
  end
  
  def execute_transaction
    if self.valid? != true
      puts "Transaction rejected. Please check your account balance."
    else
      
    end
  end
  
  def reverse_transfer
    
  end
end
