class BonusDrink

  # 飲めた数
  def self.total_count_for(buy_amount)
    @drinked_amount = 0
    @bottle_amount = 0
    @drinkable_amount = 0
    buy(buy_amount)
    while (@drinkable_amount > 0)
      drink
      change
    end
    @drinked_amount
  end

  def self.buy(buy_amount)
    @drinkable_amount = buy_amount
  end

  def self.drink
    @drinked_amount += @drinkable_amount
    @bottle_amount += @drinkable_amount
    @drinkable_amount = 0
  end

  def self.change
    @drinkable_amount = @bottle_amount / 3
    @bottle_amount = @bottle_amount % 3
    # @bottle_amount = @bottle_amount - (@bottle_amount / 3) * 3
    # puts "drinkable_amount " + @drinkable_amount.to_s
    # puts "bottle_amount " + @bottle_amount.to_s
    # puts "drinked_amount " + @drinked_amount.to_s
  end

end
