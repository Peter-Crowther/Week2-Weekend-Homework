

class Room
attr_reader :room_name
  def initialize(room_name)

    @room_name = room_name
    @guests = []
    @songs = []
  end


  def number_of_guests()
    return @guests.length()
  end

  def number_of_songs()
    return @songs.length()
  end

  def add_song(new_song)
    puts new_song.title()
    @songs.push(new_song)
  end
end


# class D
#   def title()
#     return "screw you"
#   end
# end
#
# room = Room.new(1)
#
# d = D.new()
#
# room.add_song(d)
