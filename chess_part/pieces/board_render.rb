class BoardRendererText 
    attr_accessor :board 

    def initialize(board)
        @board = board
    end

    def render
        8.times do |r|
            puts "..............."
            8.times do |c|
                pieces = board[[r, c]]
                if pieces.nil?
                    print "  "
                else
                    print "#{board[[r, c]]} "
                end
            end   
            puts " "
        end
    end
end

