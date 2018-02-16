class DogBreeds::CLI

  def call
    puts "Welcome! Which group of American Kennel Club dog breeds are you interested in?"
    list_groups
  end

  def list_groups
    #Will scrape scrape groups
    puts <<-DOC
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
