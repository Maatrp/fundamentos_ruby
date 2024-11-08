=begin
VALIDADOR DE NIF
DNI:
  Debe constar de 8 dígitos seguidos de una letra.
  La letra debe coincidir con la letra de control del DNI, que se calcula a partir de los 8 dígitos.
  Se divide el número entre 23 y el resto se sustituye por una letra que se determina por inspección mediante la siguiente tabla:
  RESTO 	0 	1 	2 	3 	4 	5 	6 	7 	8 	9 	10 	11  12 	13 	14 	15 	16 	17 	18 	19 	20 	21 	22
  LETRA 	T 	R 	W 	A 	G 	M 	Y 	F 	P 	D 	X 	B 	N 	J 	Z 	S 	Q 	V 	H 	L 	C 	K 	E

NIE:
  Debe empezar con una letra (X, Y, Z) seguida de 7 dígitos y una letra.
  La letra final también debe coincidir con una letra de control, que se puede calcular.
  Para el cálculo del dígito de control se sustituye:
    X → 0
    Y → 1
    Z → 2
=end

class Nif
  
  
  def initialize(nif)
    @nif = nif
  end  

  attr_accessor :nif

  def check_nif
    if calculate_end_letter(@nif)
      puts "El nif #{nif} es valido"
    else
      puts "El nif #{nif} es invalido"
    end
  end  


  private 

  def calculate_end_letter(nif)
    if !is_dni(nif) 
      if nie_firt_letter(nif) == "-1"
        puts "El nif #{nif} no es correcto" 
      else 
        nif[0] = nie_firt_letter(nif)
      end 
    end  

    
    nif_number = nif[0..-2]

    if nif_number.length == 8 && !(nif_number =~ /[a-zA-Z]/)
      letter_number = nif_number.to_i % 23

      case letter_number
        when 0
          check_letter(nif,"T")
        when 1  
          check_letter(nif,"R")
        when 2  
          check_letter(nif,"W")
        when 3
          check_letter(nif,"A")
        when 4
          check_letter(nif,"G")
        when 5
          check_letter(nif, "M")
        when 6
          check_letter(nif,"Y")
        when 7
          check_letter(nif,"F")
        when 8
          check_letter(nif,"P") 
        when 9
          check_letter(nif,"D")
        when 10
          check_letter(nif,"X")
        when 11
          check_letter(nif,"B")
        when 12
          check_letter(nif,"N")
        when 13
          check_letter(nif,"J")
        when 14
          check_letter(nif,"Z")
        when 15
          check_letter(nif,"S")
        when 16
          check_letter(nif,"Q")
        when 17
          check_letter(nif,"V")
        when 18
          check_letter(nif,"H")
        when 19
          check_letter(nif,"L")
        when 20
          check_letter(nif,"C")
        when 21
          check_letter(nif,"K")
        when 22
          check_letter(nif,"E")
        else
          false 
      end
    end  
  end 

  def is_dni(nif)
    if nif[0] =~ /[0-9]/
      true
    else
      false
    end
  end
   

  def nie_firt_letter(nif)
    firt_letter = nif[0]
    case firt_letter
      when "X"
        "0"
      when "Y"
        "1"
      when "Z"  
        "2"
      else
        "-1"
    end      
  end


  def check_letter(nif,letter)
    if nif[-1].upcase == letter  
      true
    else
      false  
    end
  end

end  

puts "Introduce un nif:"
nif = Nif.new(gets.chomp.to_s)
nif.check_nif

=begin
43232607J
X7540175Q
X1234567Z
4e23267j
=end