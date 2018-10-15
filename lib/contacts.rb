require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we",
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }

def remove_strawberry(contacts)
  contacts.each do |person, data|
    data.each do |attribute, value|
      if attribute == :favorite_ice_cream_flavors
        value.each do |flavor|
          i = 0
          if flavor == "strawberry"
            i = "strawberry"[i]
            flavor.delete_at(i)
          else
            i += 1
          end
        end
      end
    end
  end
  return contacts
end
