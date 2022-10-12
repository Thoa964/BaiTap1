class RoomB
    @category
    @price

    attr_accessor :category,:price 

    def initialize
        @category = "B"
        @price = 300 
    end

    def to_s
        "Room B: Category = B , price = 300"
    end

end