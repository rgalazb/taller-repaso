a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]


c = a+b
c.uniq!

d = a & b

e = a.zip(b)
