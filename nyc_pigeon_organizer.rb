require 'pry'

def nyc_pigeon_organizer(data)
  pigeons = Hash.new
  temp = []            # this array will hold pigeon names until individual hashes can be built for them
  data[:lives].each do |key, value|
    temp << value
  end
  pigeon_names = temp.flatten.uniq  # an array of all the unique pigeon names
  pigeon_names.each do |name2|
    name3 = name2
    name3 = Hash.new            #create empty hash for each pigeon
    data.each do |key1,value1|
      name3[key1] = []   # create empty array to hold values of each 'color, gender, lives' key for each pigeon
      value1.each do |key2, value2|
        value2.each do |element|     # value2 are the array values of the various hashes of the original
          if element == name2         #iterate through the arrays; if an element matches a pigeon name of a new hash
            name3[key1] << key2.to_s  # append the key into the new array of values
            end
            pigeons[name2] = name3
          end
        end
      end
    end
  pigeons
  end

     pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
       }

nyc_pigeon_organizer(pigeon_data)