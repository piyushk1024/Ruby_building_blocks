def stock_picker(day_list)
  max_diff = 0
  best_days = [0,1]
  bp = 0
  sp = 0
  (0..day_list.length-1).each do |x|
    bp = day_list[x]
    (x+1..day_list.length-1).each do |y|
      sp = day_list[y]
      if sp-bp > max_diff
        best_days[0] = x
        best_days[1] = y
        max_diff = sp-bp
      end
    end
  end
  p best_days
end
stock_picker([1,45,65,2185,631,98,13,54,3])
