module A
  def setUserDetails
    puts "Enter your name"
    @user_name = gets.chomp
    puts "Enter your age"
    @user_age = gets.chomp
  end

  def getUserDetails
    puts "User name #{@user_name}"
    puts "User age #{@user_age}"
  end
end

module B
  def userCity
    puts "User belongs to Mumbai"
  end

  def userEducation
    puts "User completed Phd in Hindi"
  end
end

class User
  include A
  include B
end

u = User.new
u.setUserDetails
u.getUserDetails
u.userCity
u.userEducation