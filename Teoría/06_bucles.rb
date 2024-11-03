# While (mientras sea verdadera) 
i = 2
while i < 6 
 	puts "While: " + i.to_s 
  i += 1 
end 

# Do While => Loop do (bucle infinito hasta break sea true) 
i = 8
loop do 
  puts "Loop: " + i.to_s 
  i += 1 
  break if i >= 5 
end 
=begin
Podemos usar esta otra forma:
  if i >= 5
    break
  end  
=end

# Until (mientras sea falsa) 
i = 3
until i >= 6 do
  puts "Until: " + i.to_s 
  i += 1 
end 

# For (iteración sobre rango o colección) 
for i in 0..5 # Incluye la última posición
  puts "For 0..5: " + i.to_s 
end 

for i in 0...5 # No incluye la última posición
  puts "For 0...5: " + i.to_s 
end 

for i in (0..5).step(2) # Salta de 2 en 2
  puts "For 0..5.step(2): " + i.to_s 
end
=begin

=end


for i in 0..5 # Para cuando cumple la condición
  puts "For 0..5 break: " + i.to_s
  break if i == 3 
end 

for i in 0..5 # Salta al siguiente cuando cumple la condición
  next if i == 3 
  puts "For 0..5 next: " + i.to_s
end
  
#.times (repetir una acción el nº indicado de veces, comenzando desde el 0) 
5.times do |i| 
  puts ".times: " + i.to_s 
end 

#.each (iteración sobre colecciones) 
  # Array:  
  array = [1, 2, 3, 4, 5]
  array.each do |num| 
    puts ".each array: " + num.to_s 
  end 

  #Hash: 
  {a: 1, b: 2, c: 3 }.each do |key, value| 
    puts ".each hash:"+ "#{key} => #{value}"  
  end 

#Upto (iterar rango númerico hacia arriba) 
5.upto(10) do |i| 
  puts "Upto: " + i.to_s 
end 

# Downto (iterar rango númerico hacia abajo) 
20.downto(14) do |i| 
  puts "Downto: " + i.to_s 
end 

#Step (iterar con salto específico entre valores) 
(0..10).step(2) do |i| 
  puts "Step: " + i.to_s 
end 