require 'yaml'
require 'byebug'
require 'time'

class User
  # @@users_data = YAML.load(File.read('users_data.yaml'))
  
  def all_users
    YAML.load_file 'users_data.yaml'
  end

  def user_name
    puts "User first name"
    all_users.each do |user|
      puts user[:first_name]
    end
  end
  
  def buyer_full_name
    puts "If user is buyer show full-name"
    all_users.each do |user|
      if user[:role] == 'buyer'
        puts user[:first_name]+ " "+user[:last_name]
      end
    end
  end

  def seller_full_name
    puts "If user is seller show full-name"
    all_users.each do |user|
      if user[:role] == 'seller'
        puts user[:first_name]+ " "+user[:last_name]
      end
    end
  end

  def find_user_age
    puts "Find age"
    all_users.each do |user|
      birth_date = Time.parse user[:date_of_birth]
      current = Time.new
      current_year = current.year
      if current.month > birth_date.month
        age = current_year.to_i - birth_date.year.to_i
        puts "Age of " + user[:first_name] + " "+ user[:last_name] + " is #{age}"
      else
        age = current_year.to_i - birth_date.year.to_i - 1
        puts "Age of " + user[:first_name] + " "+ user[:last_name] + " is #{age}"
      end
    end
  end

  def find_user_alex
    count = 0
    all_users.each do |user|
      if user[:first_name] == 'alex'
        count = count + 1
      end
    end
    puts "#{count} user name is alex"
  end 
end

user = User.new
user.user_name
user.buyer_full_name
user.seller_full_name
user.find_user_age
user.find_user_alex
