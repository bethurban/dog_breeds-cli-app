class DogBreeds::CLI

  def call
    input = nil
    puts "Welcome!"
    while input != "N"
      list_groups
      list_breeds
      breed_info
      puts "Do you want to learn about another breed? (Y/N)"
      input = gets.strip.upcase
    end
    goodbye
  end

  def list_groups
    @groups = DogBreeds::Groups.new
  end

  def list_breeds
    #Will scrape breeds in chosen group
    puts "Which group of breeds would you like to see?"
    input = gets.strip
    case input
    when "1"
      puts <<~DOC
        1. American water spaniel
        2. Boykin spaniel
        3. Brittany
        4. Chesapeake Bay retriever
        5. Clumber spaniel
        6. Cocker spaniel
        7. Curly-coated retriever
        8. English cocker spaniel
        9. English setter
        10. English springer spaniel
        11. Field spaniel
        12. Flat-coated retriever
        13. German shorthaired pointer
        14. German wirehaired pointer
        15. Golden retriever
        16. Gordon setter
        17. Irish red and white setter
        18. Irish setter
        19. Irish water spaniel
        20. Labrador retriever
        21. Lagotto romagnolo
        22. Nova Scotia duck tolling retriever
        23. Pointer
        24. Spinone Italiano
        25. Sussex spaniel
        26. Vizsla
        27. Weimaraner
        28. Welsh springer spaniel
        29. Wirehaired pointing griffon
        30. Wirehaired vizsla
      DOC
    else
      puts "Invalid entry. Please enter the number of the group you'd like to see."
      list_groups
      list_breeds
    end
  end

  def breed_info
    #Will scrape info from breed's page
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

  def goodbye
    puts "Woof! See you next time!"
  end
end
