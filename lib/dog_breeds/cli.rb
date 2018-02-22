class DogBreeds::CLI

  def call
    input = nil
    puts "Welcome!"
    while input != "N"
      list_groups
      breeds
      puts ""
      puts "Do you want to learn about another breed? (Y/N)"
      input = gets.strip.upcase
    end
    goodbye
  end

  def list_groups
    @groups = DogBreeds::Groups.list
  end

  def breeds
    @breeds = DogBreeds::Breeds.list
  end

  def goodbye
    puts "Woof! See you next time!"
  end
end
