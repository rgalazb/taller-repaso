a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

3.times do |i|
  puts "#{a[i]} #{b[i]} #{c[i]}"
end

j = 2
3.times do |i|
  puts "#{a[i]} #{b[j]} #{c[i]}"
  j -= 1
end

print a.zip(b.zip(c)).flatten
