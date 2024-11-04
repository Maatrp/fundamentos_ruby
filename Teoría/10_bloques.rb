=begin
  Tiene la sentendia: 
  do|parametro|
    sentencia
  end 
  o 
  {|parametro| sentencia} (poco usada)

  Siempre podemos pasar un bloque a cualquier función, pese a que no la espere.
=end

# YIELD
def greeting1(name)
  puts "Hola, usuario."
  
  # yield para poder hacer uso de un bloque.
  # if block_given? solo se ejecuta si recibimos el bloque.
  yield(name) if block_given?
end 

# Llamamos al método greeting y pasamos un bloque
greeting1("Francisco") do |name|
  puts "Esto es mi primer bloque, #{name}!"
end


# &variable
def greeting2(name, &bloque) 
  #&variable para guardar el bloque en una variable (se puede propagar a otras subfunciones pero es más pesado)
  puts "Hola, usuaria."
  
  # bloque.call para poder hacer uso de un bloque.
  # if block_given? solo se ejecuta si recibimos el bloque.
  bloque.call(name) if block_given?
end 

greeting2("Marta") do |name|
  puts "Esto es mi primer bloque, #{name}!"
end


# PROC convierte un bloque en un objeto Proc.
def greeting3(name, bloque1, bloque2) 
  puts "Hola, usuarios."
  bloque1.call
  bloque2.call
end 

# Instanciamos cada bloque
bloque1 = Proc.new do
  puts "Esto es mi primer bloque."
end  

bloque2 = Proc.new do
  puts "Esto es mi segundo bloque." 
end

greeting3("Fernando", bloque1, bloque2)

# LAMBDA convierte un bloque en un objeto Lambda.
greeting4 = lambda { |name| 
  "¡Hola, #{name}! Esta es mi primera lamda." 
}
# Llamamos al lambda con un argumento
puts greeting4.call("Laura")


greeting5 = ->(name, rol) { 
  "¡Hola, #{name} eres #{rol}." 
}
# Es obligatorio pasarle todos los parametros
puts greeting5.call("Ana", 2)    
