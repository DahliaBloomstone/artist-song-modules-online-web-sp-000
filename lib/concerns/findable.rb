module Findable
  def find_by_name(name)
    all.detect{|a| a.name == name}
  end

end

#databases ex:
#connects users to an online store
#introspects on a class's .all method and extracts
#the instance of the class with a certain name 
