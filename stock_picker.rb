input = ARGV

input.map {|i| i.to_i}


def stock_picker(args)
stock_value = 0
days = [0,1]

args[0...args.length-1].each do |lower|
  args[args.index(lower)+1...args.length].each do |upper|

    if (upper - lower) > stock_value
      stock_value = upper - lower 
      days = [args.index(lower), args.index(upper)]
    end

  end
end
puts stock_value
puts days
end


#stock_picker(input.map {|i| i.to_i})
