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
    if sender.valid? && receiver.valid?
      true
    end
  end
  
  def execute_transaction
    if @sender.balance < @amount
      @status = "rejected"
      puts "Transaction rejected. Please check your account balance."
    else
      @sender.deposit(@amount * -1)
      @receiver.deposit(@amount)
      @status = "complete"
      
    end
  end
  
  def reverse_transfer
    if @status == 'complete'
      
  end
end
