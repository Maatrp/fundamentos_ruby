#Clase Object (Podemos sobreescribir o añadir métodos a la clase Object)
class Object
  def sayHello
    puts "Hello"
  end  
end  

# Clase Padre 
class Person 
  # Constructor
  def initialize(name, age, country)  
    @name = name 
    @age = age 
    @country = country
  end 

  # attr_reader :name, :age, :country # Crea getters de cada atributo.
  # attr_writer :name, :age, :country # Crea setters de cada atributo.
  attr_accessor :name, :age, :country # Crea getters y setters de cada atributo.

  def introduce 
   "Hola, soy #{@name}, tengo #{@age} años y soy de #{@country}." 
  end 

  # Metodos de clase (estáticos) => self.
  def self.general_data_protection_regulation
    puts "Los datos personales de esta persona son protegidos por la ley." # No podemos acceder a los atributos de la instancia.
  end  
end 

# Clase Hija (no existe la multiherencia en Ruby)
class Student < Person
  # Constructor
  def initialize(name, age, country, degree)
    super(name, age, country) # Llama al constructor de la clase padre.
    @degree = degree
  end 
  
  attr_accessor :degree

  # Override
  def introduce
    super + " Estudio #{@degree}." # Usamos el método del padre con super y añadimos lo nuevo.
  end
end

# Instancia de la clase Student
student = Student.new("Juan", 30, "España", "Ingeniería Informática") 
puts student.introduce

# Llamamos al método de la clase Object
student.sayHello

# Llamamos al método de clase
Person.general_data_protection_regulation  