#define a module

module Memorable
  module ClassMethods

#define two class methods:
def reset_all
     self.all.clear
   end

   def count
     self.all.count
   end
 end

   module InstanceMethods
     def initialize
      self.class.all << self
    end
  end

end
