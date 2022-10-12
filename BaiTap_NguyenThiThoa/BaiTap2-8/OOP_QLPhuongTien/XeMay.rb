require_relative 'Xe.rb'
class XeMay < Xe
    @congSuat
    @dungTich

    attr_accessor :congSuat,:dungTich

    def initialize(id,hsx,nsx,dongxe,gia,bienso,mau,congSuat,dungTich)
        super(id,hsx,nsx,dongxe,gia,bienso,mau)
        @congSuat = congSuat
        @dungTich = dungTich
    end

    def to_s
        "Xe May:" + "ID= #{@id}" + ",HSX= #{@hsx}" + ",NSX= #{@nsx}" + ",Dong Xe = #{@dongxe} "  + ",Gia = #{@gia}" + ",Bien so= #{@bienso}" + ",Mau= #{@mau}" + ",Cong Suat= #{@congSuat}" + ",Dung Tich= #{@dungTich}"
    end
    
end