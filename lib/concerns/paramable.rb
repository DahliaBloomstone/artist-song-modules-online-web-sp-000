require "pry"

#this module will be needed for both the artist and song class
module Paramable

#the concept of a parameter:
  def to_param
    name.downcase.gsub(' ', '-')
   end

end


#ex: take a Ruby object, such as an instance of a User class
#and make a URL out of it.
#"SLUG"
#Parameter=> URL
