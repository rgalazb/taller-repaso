personas = [{
  nombre: 'Roberto',
  pais: 'chile',
  continente: 'america',
  genero: 'm'},
{ nombre: 'Fernanda',
  pais: 'chile',
  continente: 'america',
  genero: 'f'},
{ nombre: 'ronaldinho',
  pais: 'brasil',
  continente: 'america',
  genero: 'm'},
{ nombre: 'paul',
  pais: 'inglaterra',
  continente: 'europa',
  genero: 'm'},
{ nombre: 'ringo',
  pais: 'inglaterra',
  continente: 'europa',
  genero: 'm'},
{ nombre: 'michael',
  pais: 'estados unidos',
  continente: 'america',
  genero: 'm'},
{ nombre: 'franco',
  pais: 'chile',
  continente: 'america',
  genero: 'm'},
{ nombre: 'joan',
  pais: 'estados unidos',
  continente: 'america',
  genero: 'f'}
]
puts personas.count

continentes = personas.map {|hash| hash[:continente]}
continentes.uniq!

perdos = personas.select {|hash| hash[:nombre] == 'pedro' }

hombres = personas.select {|hash| hash[:genero] == 'm'}
mujeres = personas.select {|hash| hash[:genero] == 'f'}
