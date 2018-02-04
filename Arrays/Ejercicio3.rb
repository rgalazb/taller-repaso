array = [1,2,3,9,1,4,5,2,3,6,6]

def borrar_pares(array)
  array.each_with_index do |elemento,i|
    array.delete(i) if elemento.even?
  end
end

def sumar(array)
  sum = 0
  array.each do |elemento|
    sum += elemento
  end
  sum
end

def promedio(array)
  sum = 0
  array.each do |elemento|
    sum += elemento
  end
  sum/array.size.to_f
end

def sumar1(array)
  array.map {|i| i+1}
end
