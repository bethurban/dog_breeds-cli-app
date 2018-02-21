class DogBreeds::Breeds

  def initialize
    puts "Which group of breeds would you like to see?"
    input = gets.strip
    case input
    when "1"
      self.scrape_sporting
    when "2"
      self.scrape_hound
    when "3"
      self.scrape_working
    when "4"
      self.scrape_terrier
    when "5"
      self.scrape_toy
    when "6"
      self.scrape_non_sporting
    when "7"
      self.scrape_herding
    when "8"
      self.scrape_misc
    when "9"
      self.scrape_fss
    else
    puts "Invalid entry. Please enter the number of the group you'd like to see."
    #Need to cycle back through and list groups and allow choice
    end
  end

  def self.scrape_sporting
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/groups/sporting/"))
    binding.pry
    breeds = []
    dogs = doc.css('.event-contain .scale-contents h2')
    dogs.each do |dog|
      breeds << dog.css('a[href]').text
    end
    breeds.each_with_index do |breed, number|
      puts "#{number + 1}. #{breed}"
    end
  end

  def self.scrape_hound
  end

  def self.scrape_working
  end

  def self.scrape_terrier
  end

  def self.scrape_toy
  end

  def self.scrape_non_sporting
  end

  def self.scrape_herding
  end

  def self.scrape_misc
  end

  def self.scrape_fss
  end

end
