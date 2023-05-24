def stock_picker(array)
    prev_profit = 0
    curr_profit = 0
    buy_sell_array = [0, 0]
    array.each_with_index do |num1, ind|
      sub_array = array.slice(ind, array.length - 1)
      sub_array.each do |num2|
        curr_profit = num2 - num1
        if curr_profit > prev_profit
          buy_sell_array[0] = array.find_index(num1)
          buy_sell_array[1] = array.find_index(num2)
          prev_profit = curr_profit
          curr_profit = 0
        end
      end
    end
    print buy_sell_array
  end
  
  stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])