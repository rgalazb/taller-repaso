array = [1,2,3,9,1,4,5,2,3,6,6]

array.pop
array.shift

if array.size.even?
  array.delete(array.size/2)
else
  array.delete((array.size/2)+1)
end

if array.last != 1
  array.pop
end

aux = []

array.each do 
  aux << array.pop
end
