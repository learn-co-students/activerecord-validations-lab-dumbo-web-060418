class Author < ActiveRecord::Base

#Ensures all authors have a name
   validates :name, presence: true
#No two authors have the same name
   validates :name, uniqueness: true
# Author phone numbers are exactly ten digits
    validates :phone_number, length: {is: 10}

end
