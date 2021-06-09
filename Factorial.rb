class Factorial
  puts "Enter the number:"
    num = gets.chomp.to_i
    
    fact=1
    if (num==0)
      puts "Enter valid no"
    else
      i=1
      while(i<=num)
        fact=fact*i
        i+=1
      end
    end
  puts "factorial of #{num} is #{fact}"
end

