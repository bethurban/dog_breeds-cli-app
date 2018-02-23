class DogBreeds::CLI

  def call
    input = nil
    puts "Welcome!\n\n"
    while input != "N"
      list_groups
      list_breeds
      pick_breed
      puts ""
      puts "Do you want to learn about another breed? (Y/N)"
      input = gets.strip.upcase
    end
    goodbye
  end

  def list_groups
    DogBreeds::Groups.list
  end

  def list_breeds
    DogBreeds::Breeds.list
  end

  def pick_breed
    DogBreeds::Breeds.pick_breed
  end

  def goodbye
    puts "\nWoof! See you next time!"
  end
end
