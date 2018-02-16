class DogBreeds::Groups
  def initialize
    #Will scrape scrape group names
    puts "These are the American Kennel Club's groups of dog breeds:"
    url = "http://www.akc.org/dog-breeds/"
    group_1 = "Sporting group"
    group_2 = "Hound group"
    group_3 = "Working group"
    group_4 = "Terrier group"
    group_5 = "Toy group"
    group_6 = "Non-sporting group"
    group_7 = "Herding group"
    group_8 = "Miscellaneous class"
    group_9 = "Foundation Stock Service"

    puts <<~DOC
    1. #{group_1}
    2. #{group_2}
    3. #{group_3}
    4. #{group_4}
    5. #{group_5}
    6. #{group_6}
    7. #{group_7}
    8. #{group_8}
    9. #{group_9}
    DOC
  end
end
