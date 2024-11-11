=begin
  Escribe un programa que dibuje un arbol de navidad. El usuario debe introducir la altura del arbol.
  Tiene que verse del siguiente
        *
       ***
      *****
     *******
    *********
   ***********
  *************
 ***************
*****************
=end

class Tree

  def draw(height)
    if !is_number(height)
      puts "El valor introducido no es un número mayor que 0"
    else
      height = height.to_i
      for i in 1..height
          for j in 1..height
            if j <= (height - i)
              print " "
            else
              print "*" * (2 * i - 1)
              break
            end    
          end 
        print "\n"
      end
    end
  end

  private
  def is_number(height)
    if height =~ /[1-9]/
      true
    else
      false
    end
  end    


end  

puts "Introduce la altura del arbol: "
tree = Tree.new
tree.draw(gets.chomp)