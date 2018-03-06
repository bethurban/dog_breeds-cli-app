class DogBreeds::Breeds

  @@group_number = ""

  def self.list
    puts "Which group of breeds would you like to see? (1-7)"
    @@group_number = gets.strip
    case @@group_number
    when "1"
      scrape_sporting
      @breeds.each_with_index do |breed, number|
        puts "#{number + 1}. #{breed}"
      end
    when "2"
      scrape_hound
      @breeds.each_with_index do |breed, number|
        puts "#{number + 1}. #{breed}"
      end
    when "3"
      scrape_working
      @breeds.each_with_index do |breed, number|
        puts "#{number + 1}. #{breed}"
      end
    when "4"
      scrape_terrier
      @breeds.each_with_index do |breed, number|
        puts "#{number + 1}. #{breed}"
      end
    when "5"
      scrape_toy
      @breeds.each_with_index do |breed, number|
        puts "#{number + 1}. #{breed}"
      end
    when "6"
      scrape_non_sporting
      @breeds.each_with_index do |breed, number|
        puts "#{number + 1}. #{breed}"
      end
    when "7"
      scrape_herding
      @breeds.each_with_index do |breed, number|
        puts "#{number + 1}. #{breed}"
      end
    else
      puts "\nInvalid entry. Please enter a valid group number."
      DogBreeds::Groups.list
      self.list
    end
  end

  def self.pick_breed(group_number = "")
    group_number = @@group_number
    puts "\nWhich breed would you like more information on? (Enter the breed's number.)"
    @breed_number = gets.strip
    DogBreeds::BreedDetails.get_url(@@group_number, @breed_number)
  end

  def self.scrape_sporting
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/groups/sporting/"))
    @breeds = []
    @dogs = doc.css('.event-contain .scale-contents h2')
    #@dogs instance variable gives you XML of all the dogs in the group, which is
    #used in the BreedDetails class to scrape the chosen breed's individual URL
    @dogs.each do |dog|
      @breeds << dog.css('a[href]').text
    end
    #@breeds is an array of strings of all the breeds in the group
    @dogs
  end

  def self.scrape_hound
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/groups/hound/"))
    @breeds = []
    @dogs = doc.css('.event-contain .scale-contents h2')
    @dogs.each do |dog|
      @breeds << dog.css('a[href]').text
    end
    @dogs
  end

  def self.scrape_working
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/groups/working/"))
    @breeds = []
    @dogs = doc.css('.event-contain .scale-contents h2')
    @dogs.each do |dog|
      @breeds << dog.css('a[href]').text
    end
    @dogs
  end

  def self.scrape_terrier
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/groups/terrier/"))
    @breeds = []
    @dogs = doc.css('.event-contain .scale-contents h2')
    @dogs.each do |dog|
      @breeds << dog.css('a[href]').text
    end
    @dogs
  end

  def self.scrape_toy
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/groups/toy/"))
    @breeds = []
    @dogs = doc.css('.event-contain .scale-contents h2')
    @dogs.each do |dog|
      @breeds << dog.css('a[href]').text
    end
    @dogs
  end

  def self.scrape_non_sporting
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/groups/non-sporting/"))
    @breeds = []
    @dogs = doc.css('.event-contain .scale-contents h2')
    @dogs.each do |dog|
      @breeds << dog.css('a[href]').text
    end
    @dogs
  end

  def self.scrape_herding
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/groups/herding/"))
    @breeds = []
    @dogs = doc.css('.event-contain .scale-contents h2')
    @dogs.each do |dog|
      @breeds << dog.css('a[href]').text
    end
    @dogs
  end

end
