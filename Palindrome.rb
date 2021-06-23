# class Palindrome
#   def setNum
#     puts 'Enter any no'
#     @num = gets.chomp.to_i
#   end

#   def getNum
#     sum = 0
#     temp = @num
#     while(@num > 0)
#       rem = @num % 10
#       @num = @num / 10 
#       sum = sum * 10 + rem
#     end
#     if(temp == sum)
#       puts 'Number is palindrom'
#     else
#       puts 'Number is not palindrom '
#     end
#   end
# end

# p = Palindrome.new
# p.setNum
# p.getNum

class Palindrome
  def setValue
    puts 'Enter any num or string to check is it palindrom or not'
    @num = gets.chomp
  end

  def getValue
    if (@num == @num.reverse)
      puts 'Palindrome'
    else
      puts 'Not Palidrome'
    end
  end
end

p = Palindrome.new
p.setValue
p.getValue
