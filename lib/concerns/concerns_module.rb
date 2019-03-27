module Concerns
  module Findable
    def find_by_name(name)
      self.all.find {|object| object.name == name}
    end

    def find_or_create_by_name(name)
<<<<<<< HEAD
      # self.find_by_name(name) || self.create(name)
=======
>>>>>>> f61c64533f87f47cacd32362c637051720c97f6d
      if !find_by_name(name)
        self.create(name)
      else
        self.find_by_name(name)
      end
    end
  end
end
