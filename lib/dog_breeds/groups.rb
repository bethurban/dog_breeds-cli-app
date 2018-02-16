class DogBreeds::Groups
  def initialize
    #Will scrape scrape group names
    puts "These are the American Kennel Club's groups of dog breeds:"
    puts <<~DOC
      1. Sporting group
      2. Hound group
      3. Working group
      4. Terrier group
      5. Toy group
      6. Non-sporting group
      7. Herding group
      8. Miscellaneous class
      9. Foundation Stock Service
    DOC
  end
end
