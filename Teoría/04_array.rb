# Array vacio
ages = []

# Array con valores
names = ["marta", "Paco", "Luis", "Fernando", "Santiago", "Josefa", "Alicia"]
puts "names[1]: " + names[1]
puts names.inspect # Muestra el contenido del array con los []

# Array con valores tipo string
surnames = %w{Martinez Perez Lopez } # Dejar espacios en blanco en la última posición
puts "Apellidos: " + surnames.join(" , ")

# Cambiar un valor
names[1] = "Ana"
puts "names[1]: " + names[1]

# Agregar un valor al final
names.push("Carlos")

# Agregar un valor al principio
names.unshift("Lucia")

# Agregar un valor en una posición dada
names.insert(1, 5)
puts "Array de nombres: " + names.join(" , ")

# Combinar dos arrays
names_and_surnames = names + surnames
puts "names_and_surnames: " + names_and_surnames.join(" , ")

surnames_and_names = surnames.concat(names)
puts "surnames_and_names: " + surnames_and_names.join(" , ")

# Comprobar valor en el array
puts "names.include?(Santiago): " + names.include?("Santiago").to_s

# Eliminar el primer valor
names.shift # Elimina el primer valor y devuelve actualizado el array

# Eliminar un valor al final
names.pop

# Eliminar un valor
names.delete(5)
names.slice!(2) # Elimina el elemento en la posicion 2 y actualiza el array
names2 = names.drop(2) # Elimina los elementos desde la posicion 0 y actualiza el array
puts "names: " + names.join(" , ")
puts "names2: " + names2.join(" , ")

# Longitud de un array
puts "La longitud del array names: " + names.length.to_s

# Primer y ultimo elemento de un array
puts "El primer elemento del array es: " + names.first
puts "El ultimo elemento del array es: " + names.last

# Ordenar un array
puts "Ordenar el array: " + names.sort.join(" , ") # Sort sirve tanto con strings como con numeros. En el caso de string ordena primero por mayúsculas y despues por minúsculas.