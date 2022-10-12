require_relative 'Xe.rb'
class Oto < Xe
    @soCho
    @dongCo
    @nhienLieu
    @soTuiK
    @ngayDK

    attr_accessor :soCho,:dongCo,:nhienLieu,:soTuiK,:ngayDK

    def initialize(id,hsx,nsx,dongxe,gia,bienso,mau,soCho,dongCo,nhienLieu,soTuiK,ngayDK)
        super(id,hsx,nsx,dongxe,gia,bienso,mau)
        @soCho = soCho
        @dongCo = dongCo
        @nhienLieu = nhienLieu
        @soTuiK = soTuiK
        @ngayDK = ngayDK
    end

    def to_s
        "Oto:" + "ID= #{@id}" + ",HSX= #{@hsx}" + ",NSX= #{@nsx}" + ",Dong Xe = #{@dongxe} "  + ",Gia = #{@gia}" + ",Bien so= #{@bienso}" + ",Mau= #{@mau}" + ",So Cho= #{@soCho}" + ",Dong Co= #{@dongCo}" + ",Nhien Lieu = #{@nhienLieu}" + ",So Tui Khi = #{@soTuiK}" + ",Ngay DK = #{@ngayDK}"
    end
end