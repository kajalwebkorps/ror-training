module MovieDetails
  def setValue
    @@movie_count = 0
    puts 'Enter movie name'
    @movie_name = gets.chomp
    puts 'Enter type of movie'
    @movie_type = gets.chomp
    puts 'Enter rating out of 10'
    @rating = gets.chomp
    @@movie_count = @@movie_count + 1
  end
  
  def getValue
    puts "Movie name: #{@movie_name}"
    puts "Movie type: #{@movie_type}"
    puts "Movie name: #{@rating}"
    puts "Count: #{@@movie_count}"
  end
end

class MovieSurvey
  include MovieDetails
  def call_module
    puts 'Do you want to continue enter Y or y'
    ans = gets.chomp
    if (ans == 'Y' || ans == 'y')
      setValue
      getValue
    end
  end
end

m = MovieSurvey.new
m.call_module