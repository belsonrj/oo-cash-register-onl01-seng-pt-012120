Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@belsonrj 
Learn Git and GitHub without any code!
Using the Hello World guide, you’ll start a branch, write comments, and open a pull request.


alexisadorn
/
Flatiron-OO-Ruby
1
014
 Code Issues 0 Pull requests 0 Actions Projects 0 Wiki Security Insights
Flatiron-OO-Ruby/oo-cash-register-v-000/lib/cash_register.rb / 
@alexisadorn alexisadorn oo-cash-register-v-000
1ebac13 on May 17, 2017
39 lines (34 sloc)  748 Bytes
  
You're using code navigation to jump to definitions or references.
Learn more or give us feedback
require 'pry'
class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end

end

