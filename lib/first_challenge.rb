require 'pry'

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts.each do |person, value|
    value.each do |attribute, array|
      if attribute == :favorite_icecream_flavors
        array.delete_if{|flavor| flavor == "strawberry"}
      end
    end
  end

  #your code here


  #remember to return your newly altered contacts hash!
  contacts
end

puts first_challenge
