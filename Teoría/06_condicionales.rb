puts "Introduce tu edad:"
age = gets.to_i

# if, elsif, else
if age < 18 
  puts "Eres menor de edad" 
elsif age < 65 
  puts "Eres major de edad"
else 
  puts "Eres jubilado"  
end 

# unless
puts "Tienes más de 18" unless age < 18

# case
case age
when 0..17
  puts "Eres menor de edad!"
when 18..64
  puts "Eres mayor de edad!"
when 65..100
  puts "Eres jubilado!"
else
  puts "Valor incorrecto"
end

# ternario
age < 18 ? (puts "¡Eres menor de edad!") : (puts "¡Eres mayor de edad!")