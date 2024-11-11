=begin
  Escribe un método llamado contrasena que reciba una cadena y devuelva una nueva cadena realizando los siguientes cambios:
    Las mayúsculas se reemplazan por minúsculas.
    Se eliminan los espacios en blanco.
    Se reemplaza la a por 4.
    Se reemplaza la e por 3.
    Se reemplaza la i por 1.
    Se reemplaza la o por 0.
=end

class Password

  def password_converter(password)
    #gsub, busca y reemplaza todas las coincidencias
    password.downcase.gsub(" ", "").gsub("a", "4").gsub("e", "3").gsub("i", "1").gsub("o", "0")
  end  
end  

password = Password.new
puts password.password_converter("Que bonita")