 string = "1,2,7,1,3,5,3.4,9,1"
 arr = string.split(',')

arr.map! {|i| i.to_i}

puts arr.sum.to_f/arr.size

puts arr.mode
