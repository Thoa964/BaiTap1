class Person 
    @name
    @age 
    @id
    @roomType
    @numRent

    attr_accessor :id,:name,:age,:roomType,:numRent

    def initialize(id,name,age,roomType,numRent)
        @id = id 
        @name = name 
        @age = age 
        @roomType = roomType
        @numRent = numRent
    end

    def to_s
        "Person:" + "ID= #{@id}" + ",Name= #{@name}" + ",Age= #{@age} + RoomType= #{@roomType} + NumRent = #{@numRent}"
    end
    
end

