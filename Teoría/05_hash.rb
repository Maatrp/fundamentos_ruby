# Diccionario
=begin
Formato tradicional
  person = { 
    "name" => "Santiago", 
    "age" => 30, 
    "country" => "España" 
  }

  puts person["name"]
=end

# Formato más extendido
person ={
  name: "Santiago",
  age: 30,
  country: "España"
}

# Accediendo a todos valores
puts person

# Accediendo a un valor
puts person[:name]