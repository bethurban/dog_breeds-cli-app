class DogBreeds::Groups
  attr_accessor :group_1, :group_2, :group_3, :group_4, :group_5, :group_6,
    :group_7, :group_8, :group_9

  def initialize
    self.scrape_groups
    puts "These are the American Kennel Club's groups of dog breeds:"
    # url = "http://www.akc.org/dog-breeds/"
    # group_1 = "Sporting group"
    # group_2 = "Hound group"
    # group_3 = "Working group"
    # group_4 = "Terrier group"
    # group_5 = "Toy group"
    # group_6 = "Non-sporting group"
    # group_7 = "Herding group"
    # group_8 = "Miscellaneous class"
    # group_9 = "Foundation Stock Service"

    puts <<~DOC
    1. #{group_1}
    2. #{group_2}
    3. #{group_3}
    4. #{group_4}
    5. #{group_5}
    6. #{group_6}
    7. #{group_7}
    8. #{group_8}
    9. #{group_9}
    DOC
  end

  def self.scrape_groups
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/"))
    #binding.pry
    groups = doc.css('.side-nav ul')[1]
    groups_string = groups.css('li').text
    groups_array = groups_string.split(/(?=[A-Z])/)
    @group_1 = groups_array[0] + groups_array[1]
    @group_2 = groups_array[2] + groups_array[3]
    @group_3 = groups_array[4] + groups_array[5]
    @group_4 = groups_array[6] + groups_array[7]
    @group_5 = groups_array[8] + groups_array[9]
    @group_6 = groups_array[10] + groups_array[11] + groups_array[12]
    @group_7 = groups_array[13] + groups_array[14]
    @group_8 = groups_array[15] + groups_array[16]
    @group_9 = groups_array[17] + groups_array[18] + groups_array[19]
  end

end
