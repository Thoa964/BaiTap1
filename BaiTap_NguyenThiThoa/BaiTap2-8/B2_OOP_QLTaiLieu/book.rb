require_relative 'document.rb'
class Sach < TaiLieu
    @tacgia
    @sotrang

    attr_accessor :tacgia, :sotrang

    def initialize(id,nxb,number,tacgia,sotrang)
        super(id,nxb,number)
        @tacgia = tacgia
        @sotrang = sotrang
    end

    def to_s
        "Book{" + "author=" + "#{@tacgia}" + ", numerPage=" + "#{@sotrang}" +", id=" + "#{@id}" + ", nxb=" + @nxb + ", number=" + "#{@number}" +'}'
    end
end




