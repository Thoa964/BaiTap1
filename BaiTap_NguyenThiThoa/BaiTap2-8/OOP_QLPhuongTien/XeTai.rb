require_relative 'Xe.rb'
class XeTai < Xe
    @trongTai

    attr_accessor :trongTai

    def initialize(id,hsx,nsx,dongxe,gia,bienso,mau,trongTai)
        super(id,hsx,nsx,dongxe,gia,bienso,mau)
        @trongTai = trongTai
    end

    def to_s
        "Xe Tai:" + "ID= #{@id}" + ",HSX= #{@hsx}" + ",NSX= #{@nsx}" + ",Dong Xe = #{@dongxe} "  + ",Gia = #{@gia}" + ",Bien so= #{@bienso}" + ",Mau= #{@mau}" + ",Trong Tai= #{@trongTai}"
    end

end
