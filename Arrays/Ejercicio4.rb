array =["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia","Ray"]

masde5 = array.select {|i| i.size>5}
min = array.map {|i| i.downcase}

def cantidad(array)
  array.map {|i|i.size}
end
