class DogBreeds::Groups

  @@group_fixed_array = []

  def self.scrape_groups
    doc = Nokogiri::HTML(open("http://www.akc.org/dog-breeds/"))
    groups = doc.css('.side-nav ul')[1]
    groups_string = groups.css('li').text
    groups_array = groups_string.split(/(?=[A-Z])/)
    #groups_array has each group name split into separate strings, so we combine them below
    #["Sporting ", "Group"] becomes ["Sporting Group"]
    group_1 = groups_array[0] + groups_array[1]
    @@group_fixed_array << group_1
    group_2 = groups_array[2] + groups_array[3]
    @@group_fixed_array << group_2
    group_3 = groups_array[4] + groups_array[5]
    @@group_fixed_array << group_3
    group_4 = groups_array[6] + groups_array[7]
    @@group_fixed_array << group_4
    group_5 = groups_array[8] + groups_array[9]
    @@group_fixed_array << group_5
    group_6 = groups_array[10] + groups_array[11] + groups_array[12]
    @@group_fixed_array << group_6
    group_7 = groups_array[13] + groups_array[14]
    @@group_fixed_array << group_7

    @@group_fixed_array
  end

end
