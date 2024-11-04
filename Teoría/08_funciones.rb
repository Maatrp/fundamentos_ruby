def area_rectangle(base, height)
    base * height # En ruby devuelve la última línea de una función, no necesita return
end

puts "Introduce la base del rectángulo:"
base = gets.to_f

puts "Introduce la altura del rectángulo:"
height = gets.to_f

area = area_rectangle(base, height)
puts "El área del rectángulo es #{area}"