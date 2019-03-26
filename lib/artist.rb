 require "pry"

class Artist
  extend Concerns::Findable
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def add_song(song)
    # binding.pry
    if song.artist == "" || song.artist.nil?
      # binding.pry
      song.artist = self
    end

    if !self.songs.include?(song)
      @songs << song
    end

    song
  end

  def genres
    self.songs.map {|song| song.genre}.uniq
  end


end
