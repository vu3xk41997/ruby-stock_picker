stock_price = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)
  result = []
  earn = array[1]-array[0]
  for i in 0..(array.length-1) do
    for j in i+1..(array.length-1) do
      if array[j]-array[i] > earn
        earn = array[j]-array[i]
        result[0] = i
        result[1] = j
      end
    end
  end
  return result
end

p stock_picker(stock_price)