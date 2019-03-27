<<<<<<< HEAD
require "pry"

class MusicImporter
  attr_accessor :path
  attr_reader  :files

  def initialize(path)
    @path = path
    # @files = []
  end

  def files
    # binding.pry
    @files ||= Dir.glob("#{@path}/*.mp3").collect do |file|
      file.gsub("#{@path}/", "")
    end
    # @files
  end

  def import
    files.each {|file| Song.create_from_filename(file)}
  end
=======
class MusicImporter
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    files = []
  end

  def files
    Dir.glob("#{@path}/*.mp3").each {|file| files << file.gsub("#{@path}/", "")}
  end

>>>>>>> f61c64533f87f47cacd32362c637051720c97f6d
end
