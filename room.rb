

class Room
attr_reader :room_name, :room_capacity, :room_cost
  def initialize(room_name, room_capacity, room_cost)

    @room_name = room_name
    @room_capacity = room_capacity
    @room_cost = room_cost
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
    @songs.push(new_song)
  end

  def add_guest(new_guest)
    @guests.push(new_guest)
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def room_full()
    if number_of_guests >= @room_capacity
      return "Sorry Pavarotti"
    end

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
