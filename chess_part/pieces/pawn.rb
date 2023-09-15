class Pawn 

    pawn_w = "\u2659"
    pawn_b = "\U265F"

    def initialize(location)
        @location = location
    end

    def to_s
      puts pawn_w
    end

    def move_dirs 
        [
            [0, 1]
        ]
    end 

    def row
        @location.first
    end

    def column
        @location.last
    end
end