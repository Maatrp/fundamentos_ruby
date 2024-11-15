=begin
  Escribe un método hash que reciba un array y retorne un hash a partir del arreglo utilizando el índice de cada elemento del arreglo como llave.
  Crea otro método que haga la operación inversa
=end

class ArrayHashConverter
  def array_to_hash(array)
    hash = {}

    # array.each_with_index, para recorrer el array y obtener el index
    array.each_with_index do |element, index|
      hash[index]= element        
    end
    
    hash
  end    

  def hash_to_array(hash)
    array = []        

    hash.each_with_index  do |key, value|
      array << value # << añadir elementos al final a un array o string     
    end

    array
  end
  
end

converter = ArrayHashConverter.new

array1 = [1,2,3,4,5,6]
array2 = ["a", "b", "c", "d", "e", "f"]
array3 = [34, 925, 322]
array4 = [] 

hash1 = converter.array_to_hash(array1)
hash2 = converter.array_to_hash(array2)
hash3 = converter.array_to_hash(array3)
hash4 = converter.array_to_hash(array4)

puts "Array a hash: #{hash1}"
puts "Array a hash: #{hash2}"
puts "Array a hash: #{hash3}"
puts "Array a hash: #{hash4}"

hash01 = {0 => 0, 1 => 1, 2 => 2, 3 => 3}
hash02 = {0 => "a", 1 => "b", 2 => "c", 3 => "d"}
hash03 = {0 => 34, 1 => 925, 2 => 322}
hash04 = {}

array01 = converter.hash_to_array(hash01)
array02 = converter.hash_to_array(hash02)
array03 = converter.hash_to_array(hash03)
array04 = converter.hash_to_array(hash04)

puts "Hash a array: #{array01}"
puts "Hash a array: #{array02}"
puts "Hash a array: #{array03}"
puts "Hash a array: #{array04}"
