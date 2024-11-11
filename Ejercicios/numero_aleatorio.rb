=begin
  Escribe un programa que piense un número de forma aleatoria del 1 al 10 y le pida al usuario que lo trate de adivinar. 
  Si el número es correcto debe imprimir "Felicitaciones, ese era!", de lo contrario debe imprimir "Lo siento, intenta nuevamente!".
=end

class RandomNumber
  def guess(number)
    if number < 1 || number > 10 
      puts "El valor introducido no es un número del 1 al 10"
    elsif  random_number == number
      puts "Felicitaciones, ese era!"
    else  
      puts "Lo siento, intenta nuevamente!"
    end  
  end  

  private
  def random_number
    rand(1..10)
  end
end  

random_number = RandomNumber.new
puts "Adivina un número del 1 al 10:"
number = gets.chomp.to_i
random_number.guess(number)