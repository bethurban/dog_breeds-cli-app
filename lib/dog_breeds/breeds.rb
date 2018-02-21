class DogBreeds::Breeds

  def initialize
    self.scrape_breeds
    puts "Which group of breeds would you like to see?"
  end

  def scrape_breeds
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

end
