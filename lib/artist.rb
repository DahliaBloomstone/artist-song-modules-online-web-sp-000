require 'pry'

class Artist

#Namespacing: Parent::Child
extend Memorable::ClassMethods
include Memorable::InstanceMethods
extend Findable
include Paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
  #.initialize is an instance method
  #inside .init, self refers to the instance method of the class on which you are operating. but .all is a class method
  #can call self.class inside initialize.
  #This is code that is responsible for telling a class to keep track of its own instances.
  #how can we put class methods and instance methods in the same module? NESTING MODULES!
  #init method also responsible for setting the @songs instance variable equal to an empty array.
    super #inheritance. will execute any code placed inside the super class' method of the same name, then execute any code inside of the child class' method 
    @songs = []
  end

  def self.all #wraps the class variable
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
end

def add_songs(songs)
    songs.each { |song| add_song(song) }

  end

end
