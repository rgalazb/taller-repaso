personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edad = [32, 28, 41, 19]
perosonas_hash = {}
personas.zip(edad).each do |nombre, edad|
  perosonas_hash[nombre.to_sym] = edad
end

puts hash

def edad(hash)
  puts 'ingrese el nombre de la persona que desea saber el nombre'
  key = gets.chomp.to_sym
  hash[key]
end
