class Brainstorm < ActiveRecord::Base
  after_initialize :init

   def init
     self.color  ||= '#ffffff'
     self.no_people ||= 6
     self.no_ideas ||= 3
   end
end
