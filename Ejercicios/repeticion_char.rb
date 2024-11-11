=begin
  Escribe un método llamado frecuencia que reciba una cadena de texto y retorne un hash con el número de veces que aparece cada caracter 
  (exceptuando el espacio en blanco).

  "hola mundo": {"h"=>1, "o"=>2, "l"=>1, "a"=>1, "m"=>1, "u"=>1, "n"=>1, "d"=>1}
  "anita lava la tina": {"a"=>6, "n"=>2, "i"=>2, "t"=>2, "l"=>2, "v"=>1}
=end

class CharRepeat

  def frequency(text)
    hash = {}
    text.each_char do |char|
      next if char == " "  
      hash[char] = text.count(char) # count cuenta cuantas veces aparece el char
      
    end 

    hash
  end  


end

cadena1 = CharRepeat.new
puts cadena1.frequency("hola mundo")

cadena2 = CharRepeat.new
puts cadena2.frequency("anita lava la tina")