class DogBreeds::CLI

  def call
    input = nil
    puts "Welcome!"
    puts ""
    while input != "N"
      list_groups
      breeds
      pick_breed
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

  def pick_breed
    DogBreeds::Breeds.pick_breed
  end

  def goodbye
    puts "Woof! See you next time!"
  end
end
