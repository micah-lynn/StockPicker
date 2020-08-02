#Create a variable called "stock prices" that is an array of potential stock prices
p stock_prices = [24,13,6,4,8,3,6,9,2]

#Create a method called stock picker which takes an array
def stock_picker(array)
    sorted_stocks = array.sort.reverse
    profit = 0
    days_buy_sell = []
    sorted_stocks.each do |price_sell|
        array.each do |price_buy|
            if price_buy < price_sell && array.index(price_sell) > array.index(price_buy) && price_sell - price_buy > profit
                days_buy_sell = [array.index(price_buy), array.index(price_sell)]
                profit = price_sell - price_buy
            end
        end
    end
    days_buy_sell
end

#Print outputs here
p stock_picker(stock_prices)