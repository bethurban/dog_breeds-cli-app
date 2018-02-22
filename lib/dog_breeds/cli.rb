class DogBreeds::CLI

  def call
    input = nil
    puts "Welcome!"
    while input != "N"
      list_groups
      list_breeds
      breed_info
      puts ""
      puts "Do you want to learn about another breed? (Y/N)"
      input = gets.strip.upcase
    end
    goodbye
  end

  def list_groups
    @groups = DogBreeds::Groups.new
  end

  def list_breeds
    @breeds = DogBreeds::Breeds.new
  end

  def breed_info
    @breed_details = DogBreeds::BreedDetails.new
  end

  def goodbye
    puts "Woof! See you next time!"
  end
end
