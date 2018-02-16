class DogBreeds::CLI

  def call
    puts "Welcome! Which group of American Kennel Club dog breeds are you interested in?"
    list_groups
    group = gets.strip
    list_breeds(group)
    breed = gets.strip
    breed_info(breed)

  end

  def list_groups
    #Will scrape scrape group names
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

  def list_breeds(group)
    #Will scrape breeds in chosen group
    puts "Which breed would you like to learn more about?"
    if group == "1"
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
    end
  end

  def breed_info(breed)
    #Will scrape info from breed's page
    if breed == "1"
      puts <<~DOC
      American water spaniel

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
    end
  end
end
