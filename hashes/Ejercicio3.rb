inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

def ingresar
  puts 'ingrese nombre del producto y stock separado por una coma(",")'
  producto = gets.chomp.split(',')
end

def espera
  puts 'presione enter para continuar'
  gets
end

def verstock(hash)
  hash.each_with_index do |(key,value),index|
    puts "#{index+1}: #{key}, stock: #{value}"
  end
end

def leerindice(hash)
  verstock(hash)
  puts 'seleccione el indice del producto'
  indice = gets.chomp.to_i - 1
  hash.each_with_index do |(key,value),index|
    hash.delete(key) if index == indice
  end
end

def verstock(hash)
  hash.each_with_index do |(key,value),index|
    puts "#{index+1}: #{key}, stock: #{value}"
  end
end

def mayorstock(hash)
  mayor = 0
  hash.each do |key,value|
    if value>mayor
      mayor = value
    end
  end
  mayor
end

def comprobar(hash)
  puts 'ingrese el producto que desea buscar'
  producto = gets.chomp
  puts hash.has_key?(producto) ? 'Sí' : 'No Existe'
end

def menu
  opc = 0
  puts '1: Ingresar Producto'
  puts '2: Eliminar Producto'
  puts '3: Actualizar información'
  puts '4: Ver stock total de los productos'
  puts '5: Ver el item con mayor contidad de stock'
  puts '6: Comprobar si un producto existe'
  puts '7: Salir'
  puts 'Elija una opción'
  opc = gets.chomp.to_i
end

opc = menu

while opc != 7
  case opc
  when 1
    prod = ingresar
    inventario[prod[0]] = prod[1].to_i
    puts 'el producto fue ingresado correctamente' if inventario.has_key?(prod[0])
    espera
  when 2
    indice = leerindice(inventario)
    clave = ""
    inventario.each_with_index do |(key,value),index|
      if index == indice
        clave = key
        inventario.delete(key)
      end
    end
    puts 'eliminado correctamente' unless inventario.has_key?(clave)
    espera
  when 3
    puts 'ingrese el indice del item que desea actualizar'
    indice = leerindice(inventario)
    puts 'ingrese el nombre del item'
    clave = gets.chomp
    puts 'ingrese el stock'
    stock = gets.chomp.to_i
    inventario.each_with_index do |(key,value),index|
      if index == indice
        inventario.delete(key)
      end
    end
    inventario[clave] = stock
    espera
  when 4
    verstock(inventario)
    puts "total: #{inventario.values.sum}"
    espera
  when 5
    mayor = mayorstock(inventario)
    puts "#{inventario.key(mayor)}: #{mayor}"
    espera
  when 6
    comprobar(inventario)
    espera
  else
  end
  opc = menu
end
puts "hasta luego..."
