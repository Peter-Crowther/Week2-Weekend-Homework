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






end
