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
end
# class MusicImporter
#   attr_accessor :path, :files
# 
#   def initialize(path)
#     @path = path
#     files = []
#   end
# 
#   def files
#     Dir.glob("#{@path}/*.mp3").each {|file| files << file.gsub("#{@path}/", "")}
#   end
# 
# end
