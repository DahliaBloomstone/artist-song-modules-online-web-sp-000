#this module is used because the method is in both the artist and song class
module Findable
  def find_by_name(name)
    all.detect{|a| a.name == name}
  end

end

#Artist.find_by_name("Adele")
#databases ex:
#connects users to an online store
#introspects on a class's .all method and extracts
#the instance of the class with a certain name
