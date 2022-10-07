# ID, Hãng sản xuất, năm sản xuất, dòng xe, giá bán, biển số và màu xe.
class PhuongTien 
    attr_accessor :id_165, :hsx_165, :nsx_165, :dongxe_165, :giaban_165, :bienso_165, :mauxe_165
    def initialize(id_165, hsx_165, nsx_165, dongxe_165, giaban_165, bienso_165, mauxe_165)
        @id_165 = id_165
        @hsx_165 = hsx_165
        @nsx_165 = nsx_165
        @dongxe_165 = dongxe_165
        @giaban_165 = giaban_165
        @bienso_165 = bienso_165
        @mauxe_165 = mauxe_165
    end  

    def display
        puts "ID: #{id_165}"
        puts "Hang san xuat: #{hsx_165}"
        puts "Nam san xuat: #{nsx_165}"
        puts "Dong xe: #{dongxe_165}"
        puts "Gia ban: #{giaban_165}"
        puts "Bien so: #{bienso_165}"
        puts "Mau xe: #{mauxe_165}"
    end
end

#số chỗ ngồi, kiểu động cơ, nhiên liệu (xăng/dầu), số túi khí, ngày đăng kiểm.
class Oto < PhuongTien
    attr_accessor :sochongoi_165, :kieudongco_165, :nhienlieu_165, :sotuikhi_165, :ngaydangkiem_165
    def initialize(id_165, hsx_165, nsx_165, dongxe_165, giaban_165, sochongoi_165, kieudongco_165, nhienlieu_165, sotuikhi_165, ngaydangkiem_165)
        super(id_165, hsx_165, nsx_165, dongxe_165, giaban_165, bienso_165, mauxe_165)
        @sochongoi_165 = sochongoi_165
        @kieudongco_165 = kieudongco_165
        @nhienlieu_165 = nhienlieu_165
        @sotuikhi_165 = sotuikhi_165
        @ngaydangkiem_165 = ngaydangkiem_165
    end  

    def display
        super
        puts "So cho ngoi: #{sochongoi_165}"
        puts "Kieu dong co: #{kieudongco_165}"
        puts "Nhien lieu: #{nhienlieu_165}"
        puts "So tui khi: #{sotuikhi_165}"
        puts "Ngay dang kiem: #{ngaydangkiem_165}"
    end
end

#công suất, dung tích bình xăng.
class XeMay < PhuongTien
    attr_accessor :congsuat_165, :dungtich_165
    def initialize(id_165, hsx_165, nsx_165, dongxe_165, giaban_165, congsuat_165, dungtich_165)
        super(id_165, hsx_165, nsx_165, dongxe_165, giaban_165, bienso_165, mauxe_165)
        @congsuat_165 = congsuat_165
        @dungtich_165 = dungtich_165
    end  

    def display
        super
        puts "Cong suat: #{congsuat_165}"
        puts "Dung tich binh xang: #{dungtich_165}"
    end
end

#Trọng tải.
class XeTai < PhuongTien
    attr_accessor :trongtai_165
    def initialize(id_165, hsx_165, nsx_165, dongxe_165, giaban_165, trongtai_165)
        super(id_165, hsx_165, nsx_165, dongxe_165, giaban_165, bienso_165, mauxe_165)
        @trongtai_165 = trongtai_165
    end 

    def display
        super
        puts "Trong tai: #{trongtai_165}"
    end
end


class QLPTGT 
    attr_accessor :qlptgt_array_165
    def initialize 
        @qlptgt_array_165 = Array.new
        @search_result_array = Array.new
    end

    def nhapthongtin
        print "Chon loai phuong tien: 1.O to  2.Xe may  3.Xe tai  "
        loai_165 = gets.chomp.to_i

        # ID, Hãng sản xuất, năm sản xuất, dòng xe, giá bán, biển số và màu xe.
        print 'ID :'
        id_165 = gets.chomp.to_s
        print 'Hang san xuat :'
        hsx_165 = gets.chomp.to_s
        print 'Nam san xuat :'
        nsx_165 = gets.chomp.to_s
        print 'Dong xe :'
        dongxe_165 = gets.chomp.to_s
        print 'Gia ban :'
        giaban_165 = gets.chomp.to_s
        print 'Bien so :'
        bienso_165 = gets.chomp.to_s
        print 'Mau xe :'
        mauxe_165 = gets.chomp.to_s

        case loai_165
            when 1
                print "Nhap so cho ngoi: "
                sochongoi_165 = gets.chomp.to_i
                print "Nhap kieu dong co: "
                kieudongco_165 = gets.chomp
                print "Chon nhien lieu: 1.Xang  2.Dau "
                nhienlieu_165 = gets.chomp.to_i
                print "Nhap so tui khi: "
                sotuikhi_165 = gets.chomp.to_i
                print "Nhap ngay dang kiem: "
                ngaydangkiem_165 = gets.chomp
          
                nl_165 = "Xang"
                if nhienlieu_165 == 2
                  nl_165 = "Dau"
                end
          
                qlptgt_array_165.push(Oto.new(id_165, hsx_165, nsx_165, dongxe_165, giaban_165, sochongoi_165, kieudongco_165, nhienlieu_165, sotuikhi_165, ngaydangkiem_165))
            when 2
                print "Nhap cong suat: "
                congsuat_165 = gets.chomp.to_i
                print "Nhap dung tich binh xang: "
                dungtich_165 = gets.chomp.to_i

                qlptgt_array_165.push(XeMay.new(id_165, hsx_165, nsx_165, dongxe_165, giaban_165, congsuat_165, dungtich_165))
            when 3
                print "Nhap trong tai: "
                trongtai_165 = gets.chomp.to_i
          
                qlptgt_array_165.push(XeTai.new(id_165, hsx_165, nsx_165, dongxe_165, giaban_165, trongtai_165))
        end 
    end

    def them id_165, hsx_165, nsx_165, dongxe_165, giaban_165, bienso_165, mauxe_165
        ptgt = PhuongTien.new(id_165, hsx_165, nsx_165, dongxe_165, giaban_165, bienso_165, mauxe_165)
        @qlptgt_array_165.push(ptgt)
    end
    
    def timkiem_hsx hsx_165
        searchList = @qlptgt_array_165.select {|o| o.hsx_165.include? hsx_165}
        searchList.each{ |sl| sl.display}
    end

    def timkiem_mau mauxe_165
        searchList = @qlptgt_array_165.select {|o| o.mauxe_165.include? mauxe_165}
        searchList.each{ |sl| sl.display}
    end

    def timkiem_bienso bienso_165
        searchList = @qlptgt_array_165.select {|o| o.bienso_165.include? bienso_165}
        searchList.each{ |sl| sl.display}
    end

    def hienthi
        length = @qlptgt_array_165.length
        for i in 0..length do
            @qlptgt_array_165[i].display
        end
    end

    def xoaphuontien(id)
        @qlptgt_array_165.delete_if { |item| item.id_165.chomp.eql?id }
        print "Đã xoá thành công!"
    end
end

class Main
    manage_165=QLPTGT.new()
    user_input = " "
    while user_input != 7
        puts "----------------------------------"
        puts "Nhap 1: Them phuong tien vao danh sach"
        puts "Nhap 2: Hien thi danh sach "
        puts "Nhap 3: Xoa phuong tien theo id"
        puts "Nhap 4: Tim phuong tien theo hang san xuat"
        puts "Nhap 5: Tim phuong tien theo mau"
        puts "Nhap 6: Tim phuong tien theo bien so"
        puts "Nhap 7: Thoat"
        print "Nhap lua chon cua ban "
        user_input = gets.chomp.to_i

        if user_input == 1
            manage_165.nhapthongtin()
=begin
            # ID, Hãng sản xuất, năm sản xuất, dòng xe, giá bán, biển số và màu xe.
            print 'ID :'
            id_165 = gets.chomp.to_s
            print 'Hang san xuat :'
            hsx_165 = gets.chomp.to_s
            print 'Nam san xuat :'
            nsx_165 = gets.chomp.to_s
            print 'Dong xe :'
            dongxe_165 = gets.chomp.to_s
            print 'Gia ban :'
            giaban_165 = gets.chomp.to_s
            print 'Bien so :'
            bienso_165 = gets.chomp.to_s
            print 'Mau xe :'
            mauxe_165 = gets.chomp.to_s

            manage_165.them(id_165, hsx_165, nsx_165, dongxe_165, giaban_165, bienso_165, mauxe_165)
=end
        elsif user_input == 2
            manage_165.hienthi()
        elsif user_input == 3
            print 'Nhap id phuong tien can xoa '
            id_165 = gets.chomp.to_s
            manage_165.xoaphuontien(id_165)
        elsif user_input == 4
            hangsx_165 = gets.chomp.to_s
            manage_165.timkiem_hsx(hangsx_165)
        elsif user_input == 5
            mau_165 = gets.chomp.to_s
            manage_165.timkiem_mau(mau_165)
        elsif user_input == 6
            bienso_165 = gets.chomp.to_s
            manage_165.timkiem_bienso(bienso_165)
        elsif
            exit
        end
    end         
end

