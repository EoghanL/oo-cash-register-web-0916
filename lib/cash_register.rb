class CashRegister

  attr_accessor :total , :discount, :items , :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item_price = 0
  end

  def total
    @total
  end

  def add_item(item,price,quantity = 1)
    quantity.times do
      @items << item
      @last_item_price = price
    end

    @total += price * quantity
  end

  def apply_discount
    @total = @total - (@total * (@discount.to_f / 100) )
    if @discount == 0
      #binding.pry
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item_price
  end

end
