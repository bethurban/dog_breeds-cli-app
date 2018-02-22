class DogBreeds::BreedDetails
  attr_reader @fixed_url

  def self.get_url(group, breed)
    binding.pry
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
  end






    # case input
    # when "1"
    #   puts <<~DOC
    #
    #   American water spaniel:
    #
    #   Personality: Happy, eager, and charming; aloof with strangers, and a little stubborn
    #   Energy Level: Very Active; Upbeat AWS are outdoorsy athletes who love hunting and swimming
    #   Good with Children: Better with Supervision
    #   Good with other Dogs: With Supervision
    #   Shedding: Infrequent
    #   Grooming: Weekly
    #   Trainability: Eager To Please
    #   Height: 15-18 inches
    #   Weight: 30-45 pounds (male), 25-40 pounds (female)
    #   Life Expectancy: 10-14 years
    #   Barking Level: Barks When Necessary
    #   DOC
    # else
    #   puts "Invalid entry. Please enter the number of the breed you'd like to learn about."
    #   #Need to cycle back through.
    # end


end
