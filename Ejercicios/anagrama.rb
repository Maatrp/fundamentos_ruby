=begin
  Escribe una función que reciba dos palabras (String) y retorne verdadero o falso según sean o no anagramas.
  Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial. Ej: amor → mora
  NO hace falta comprobar que ambas palabras existan.
=end

class Anagram

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end
  
  attr_accessor :word1, :word2

  def check_anagram
    # chars convierte el string en un array de cada carácter
    if @word1.downcase.chars.sort == @word2.downcase.chars.sort
      true
    else
      false 
    end
  end  
end  

puts "Introduce la primera palabra:"
word1 = gets.chomp.to_s
puts "Introduce la segunda palabra:"
word2 = gets.chomp.to_s

anagram = Anagram.new(word1, word2)
puts "Las palabras #{word1} y #{word2} son anagramas: #{anagram.check_anagram}"