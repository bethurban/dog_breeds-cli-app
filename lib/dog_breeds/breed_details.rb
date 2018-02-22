class DogBreeds::BreedDetails
  attr_reader :fixed_url

  def self.get_url(group, breed)
    case group
    when "1"
      breed_list = DogBreeds::Breeds.scrape_sporting
      dog = breed_list[breed.to_i - 1]
      dog_url = dog.css('a')
      url = dog_url[0]['href']
      @fixed_url = "http://www.akc.org" + url
    when "2"
      breed_list = DogBreeds::Breeds.scrape_hound
      dog = breed_list[breed.to_i - 1]
      dog_url = dog.css('a')
      url = dog_url[0]['href']
      @fixed_url = "http://www.akc.org" + url
    when "3"
      breed_list = DogBreeds::Breeds.scrape_working
      dog = breed_list[breed.to_i - 1]
      dog_url = dog.css('a')
      url = dog_url[0]['href']
      @fixed_url = "http://www.akc.org" + url
    when "4"
      breed_list = DogBreeds::Breeds.scrape_terrier
      dog = breed_list[breed.to_i - 1]
      dog_url = dog.css('a')
      url = dog_url[0]['href']
      @fixed_url = "http://www.akc.org" + url
    when "5"
      breed_list = DogBreeds::Breeds.scrape_toy
      dog = breed_list[breed.to_i - 1]
      dog_url = dog.css('a')
      url = dog_url[0]['href']
      @fixed_url = "http://www.akc.org" + url
    when "6"
      breed_list = DogBreeds::Breeds.scrape_non_sporting
      dog = breed_list[breed.to_i - 1]
      dog_url = dog.css('a')
      url = dog_url[0]['href']
      @fixed_url = "http://www.akc.org" + url
    when "7"
      breed_list = DogBreeds::Breeds.scrape_herding
      dog = breed_list[breed.to_i - 1]
      dog_url = dog.css('a')
      url = dog_url[0]['href']
      @fixed_url = "http://www.akc.org" + url
    when "8"
      breed_list = DogBreeds::Breeds.scrape_misc
      dog = breed_list[breed.to_i - 1]
      dog_url = dog.css('a')
      url = dog_url[0]['href']
      @fixed_url = "http://www.akc.org" + url
    when "9"
      breed_list = DogBreeds::Breeds.scrape_fss
      dog = breed_list[breed.to_i - 1]
      dog_url = dog.css('a')
      url = dog_url[0]['href']
      @fixed_url = "http://www.akc.org" + url
    end
    details(@fixed_url)
  end

  def self.details(fixed_url)
    doc = Nokogiri::HTML(open("#{fixed_url}"))
    breed_info = []
    details = doc.css('.breed-details__main ul li')
    details.each do |detail|
      breed_info << detail.text
    end
    #binding.pry
    if breed_info == []
      puts "The American Kennel Club does not provide any further information on this breed at this time."
    else breed_info.each do |info|
      puts info
    end
    end
  end

end
