=begin
  Escribe un programa que le pregunte al usuario el año en que nació e imprima su edad actual.
  Mostrar un mensaje "Imposible! Aún no has nacido" si el año es mayor al actual e "Imposible! Nadie tiene esa edad" si la edad es más de 120 años.
  También  en el caso en que la persona tenga un año, para que no utilice el plural: "Tienes 1 año" en ves de "Tienes 1 años".
=end
require 'date'

class Age

  def actual_age (year)

    if is_number(year)
      age = age(year.to_i)

      if  age == 1
        puts "Tienes #{age} año"

      elsif age <= 0  
        puts "Imposible! Aún no has nacido"

      elsif  age > 120
        puts "Imposible! Nadie tiene esa edad"

      else 
        puts "Tienes #{age} años"
      end

    else
      puts "El valor introducido no es correcto"
    end
  end      

  private
  def is_number(year)
    if year =~ /[0-9]/
      true
    else
      false
    end
  end    

  def age (year)
    date = Date.today.year
    age = date - year
  end 

end  

puts "Introduce tu año de nacimiento:"
age = Age.new
age.actual_age(gets.chomp)