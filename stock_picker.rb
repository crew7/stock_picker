def stock_picker(stocks)
    largest_stock = 0
    largest_stock_pair = []

    final_index_of_stocks = stocks.length - 1

    stocks.each_with_index do |stock,index|
        until index == final_index_of_stocks
            index += 1
            temp_stock_calc = stocks[index] - stock

            if temp_stock_calc > largest_stock
                largest_stock = temp_stock_calc
                low_index = stocks.find_index(stock)
                high_index = index
                largest_stock_pair = [low_index,high_index]
            end
        end
    end
    
    largest_stock_pair
end

p stock_picker([17,3,6,9,15,8,6,1,10])