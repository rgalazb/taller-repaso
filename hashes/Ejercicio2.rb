restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

puts "el plato más caro es #{restaurant_menu.key(restaurant_menu.values.sort[-1])}"
puts "el plato más barato es #{restaurant_menu.key(restaurant_menu.values.sort[0])}"


prom = restaurant_menu.values.inject(0) do |sum, valor|
  sum + valor
end

puts "el promedio de precios es: #{prom/restaurant_menu.values.size.to_f}"

nombres = restaurant_menu.keys
valores = restaurant_menu.values

restaurant_menu.each do |key,value|
  restaurant_menu[key] = value * 1.19
end

puts restaurant_menu

restaurant_menu.each do |key,value|
  restaurant_menu[key] = value*0.8 if key.include?(' ')
end
puts restaurant_menu
