class RoomA 
    @category
    @price

    attr_accessor :category,:price 

    def initialize
        @category = "A"
        @price = 500 
    end

    def to_s
        "Room A: Category = A , price = 500"
    end

end