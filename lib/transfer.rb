class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
    
  end
  
  def valid?
    if @sender.valid? && @reciever.valid?
      true
    end
  end
  
  def execute_transaction
    if @sender.balance < @amount
      puts "Transaction rejected. Please check your account balance."
    else
      
      
    end
  end
  
  def reverse_transfer
    
  end
end
