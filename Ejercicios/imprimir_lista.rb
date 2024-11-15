=begin
  Escribe un programa para la línea de comandos que le permita a un usuario ingresar una lista de nombres y 
  después los imprima mostrando la posición en la que se encuentran.

  Ingresa el número de personas: 3
  Persona 1: Juan
  Persona 2: Pedro
  Persona 3: Daniel

  El nombre en la posición 0 es Juan
  El nombre en la posición 1 es Pedro
  El nombre en la posición 2 es Daniel
=end

class PrintList
  
  def print(size)
    array = array_creation(size)

    if array != nil
      for i in 0..array.length-1 do
        puts "El nombre en la posicion #{i} es #{array[i]}"
      end 
    end

  end

  private
  def array_creation(size)
    array = []

    if !is_number(size)
      puts "El valor introducido no es un número"
    else
      size = size.to_i
      
      for i in 1..size do
        puts "Persona #{i}: "
        array << gets.chomp.to_s        
      end
    end
    
    array

  end

  def is_number(year)
    if year =~ /[0-9]/
      true
    else
      false
    end
  end  
        
end


print_list = PrintList.new
print "Ingrese el número de personas: "
print_list.print(gets.chomp)