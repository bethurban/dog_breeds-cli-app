class DogBreeds::BreedDetails

  puts "Which breed would you like more information on?"
  input = gets.strip
  case input
  when "1"
    puts <<~DOC

    American water spaniel:

    Personality: Happy, eager, and charming; aloof with strangers, and a little stubborn
    Energy Level: Very Active; Upbeat AWS are outdoorsy athletes who love hunting and swimming
    Good with Children: Better with Supervision
    Good with other Dogs: With Supervision
    Shedding: Infrequent
    Grooming: Weekly
    Trainability: Eager To Please
    Height: 15-18 inches
    Weight: 30-45 pounds (male), 25-40 pounds (female)
    Life Expectancy: 10-14 years
    Barking Level: Barks When Necessary
    DOC
  else
    puts "Invalid entry. Please enter the number of the breed you'd like to learn about."
    breed_info
  end
end
