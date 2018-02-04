a = [1,2,3,0,1,2,2,1,2,1,2,0,3]
b =  [:azul, :verde, :amarillo]

arr = []
a.each do |i|
  arr << b[i]
end

print arr
