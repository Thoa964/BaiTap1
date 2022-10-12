class Xe
    @id
    @hsx
    @nsx
    @dongxe
    @gia
    @bienso
    @mau

    attr_accessor :id,:hsx,:nsx,:dongxe,:gia,:bienso,:mau

    def initialize(id,hsx,nsx,dongxe,gia,bienso,mau)
        @id = id 
        @hsx = hsx
        @nsx = nsx 
        @dongxe = dongxe
        @gia = gia 
        @bienso = bienso
        @mau = mau
    end
end