class DogBreeds::Breeds
  attr_accessor :group_number, :breed_number

  def self.list
    puts "Which group of breeds would you like to see?"
    @group_number = gets.strip
    #Creates instance variable of the number of the group chosen.
    case @group_number
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
    when "8"
      scrape_misc
      @breeds.each_with_index do |breed, number|
        puts "#{number + 1}. #{breed}"
      end
    when "9"
      scrape_fss
      @breeds.each_with_index do |breed, number|
        puts "#{number + 1}. #{breed}"
      end
    else
    puts "Invalid entry. Please enter the number of the group you'd like to see."
    #Need to cycle back through and list groups and allow choice
    end
    puts "Which breed would you like more information on?"
    @breed_number = gets.strip
    DogBreeds::BreedDetails.get_url(@group_number, @breed_number)
    #Creates instance variable of the number of the breed chosen.
  end

  def self.scrape_sporting
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/groups/sporting/"))
    @breeds = []
    @dogs = doc.css('.event-contain .scale-contents h2')
    @dogs.each do |dog|
      @breeds << dog.css('a[href]').text
    end
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

  def self.scrape_misc
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/groups/miscellaneous-class/"))
    @breeds = []
    @dogs = doc.css('.event-contain .scale-contents h2')
    @dogs.each do |dog|
      @breeds << dog.css('a[href]').text
    end
    @dogs
  end

  def self.scrape_fss
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/groups/foundation-stock-service/"))
    @breeds = []
    @dogs = doc.css('.event-contain .scale-contents h2')
    @dogs.each do |dog|
      @breeds << dog.css('a[href]').text
    end
    @dogs
  end

end
