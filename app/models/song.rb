class Song < ActiveRecord::Base

validates_presence_of :how_many_times

def self.total_play_count
  sum(:how_many_times)
end

end
