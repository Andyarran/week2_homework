class Room

  attr_reader :capacity, :name
    attr_accessor :occupants, :song_library


    def initialize(name, capacity)
      @name = name
      @capacity = capacity
      @occupants = []
      @song_library = []
    end

    def get_room_name
      return @name
    end

    def check_room_capacity
      return @capacity
    end

    def add_guest(guest)
      if @occupants.count < @capacity then 
        @occupants.push(guest)
      else 
        puts "This room is at capacity at the moment. Please try again later."
      end
    end

    def remove_guest(guest)
      @occupants.delete(guest)
    end

    def add_song(song)
        @song_library.push(song)
      end

  end
