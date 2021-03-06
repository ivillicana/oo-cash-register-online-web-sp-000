require 'pry'

class CashRegister
  attr_accessor :total, :discount
  
  @@all_items = []
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
    @@all_items << title
  end
  
  def apply_discount
    # binding.pry
    if discount != 0
      self.total = (self.total - (self.discount.to_f / 100 * self.total)).to_i
      "After the discount, the total comes to $#{self.total}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @@all_items
  end
  
end
