array = [1,2,3,9,1,4,5,2,3,6,6]

puts array.first

puts array.last

puts array

array.each_with_index do |elemento,i|
  puts "#{i+1}: #{elemento}"
end

array.each_with_index do |elemento,i|
  puts "#{i+1}: #{elemento}" if (i+1).even?
end

puts 'ingrese el número a encontrar'
num = gets.chomp.to_i


puts array.include?(num) ? 'sí' : 'no'
