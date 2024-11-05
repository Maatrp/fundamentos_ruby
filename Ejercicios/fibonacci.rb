=begin
  Escribe un programa que imprima los 50 primeros números de la sucesión de Fibonacci empezando en 0.
  La serie Fibonacci se compone por una sucesión de números en la que el siguiente siempre es la suma de los dos anteriores.
  0, 1, 1, 2, 3, 5, 8, 13...
=end

class Fibonacci
  def generate_fibonacci
    number1 = 0
    number2 = 1
    counter = 1
    fibonacci_numbers = [number1, number2]

    while counter <= 50
      number = number1 + number2

      if number == counter
        fibonacci_numbers.push(number)
        number1 = number2
        number2 = number
      end  
      counter += 1
    end
    
    fibonacci_numbers
    
  end

end

fibonacci = Fibonacci.new
puts "Array: #{fibonacci.generate_fibonacci}"