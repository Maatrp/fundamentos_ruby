=begin
  Escribe un método formatear que reciba un hash (con una estructura determinada) y devuelva una cadena de texto utilizando los valores del hash.
  El hash representa un producto y siempre va a tener las mismas llaves:
    name - el nombre del producto
    id - el identificador del producto
    price - el precio del producto
    unit - la unidad

  Ejemplo:  
  puts formatear({ name: "Arroz", id: 1, price: 12.99, unit: "kg" })
  "El producto Arroz con id 1 tiene un price de 12.99 por kg"
=end

class Product
  def format(product)
    "El producto #{product[:name]} con id #{product[:id]} tiene un price de #{product[:price]} por #{product[:unit]}"
  end
end

arroz = Product.new
puts arroz.format({ name: "Arroz", id: 1, price: 12.99, unit: "kg" })

leche = Product.new
puts arroz.format({ name: "Leche", id: 2, price: 5.95, unit: "litro" })