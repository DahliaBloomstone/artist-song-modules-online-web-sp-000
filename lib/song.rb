require 'pry'

class Song
  extend Memorable::ClassMethods #self keyword is omitted when defining class methods inside modules
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all #wraps the class variable 
    @@songs
  end
end
