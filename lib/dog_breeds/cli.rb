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
    groups = DogBreeds::Groups.scrape_groups
    puts "These are the American Kennel Club's groups of dog breeds:"
    puts <<~DOC
    1. #{groups[0]}
    2. #{groups[1]}
    3. #{groups[2]}
    4. #{groups[3]}
    5. #{groups[4]}
    6. #{groups[5]}
    7. #{groups[6]}

    DOC
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
