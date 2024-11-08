=begin
  Escribe un programa que se encargue de comprobar si un número es o no primo. Imprime los números primos entre 1 y 100.
=end

class PrimeNumbers

  def generate_primes
    primes = []

    (1...100).each do |number|
      if check_prime(number)
        primes.push(number)
      end
    end

    primes
  end
  
  
  private
  def check_prime(number)
    if number == 2 || number == 3 || number == 5 || number == 7 || number == 11
      true
    elsif number % 2 == 0 || number % 3 == 0 || number % 5 == 0 || number % 7 == 0 || number % 11 == 0
      false
    else
      true
    end  
  end  

end  


prime_numbers = PrimeNumbers.new
puts "Número primos entre 1 y 100: #{prime_numbers.generate_primes}"