class Canbo


    def initialize

    end 

   

    def enter_infomation
        print "Nhập tên : "
        @name165 = gets.chomp
        print "Nhập tuổi : "
        @age165 = gets.to_i
        print "Nhập giới tính 1(nam) 0(nữ) 2(khác) : "
        @gender165 = gets.to_i
        print "Nhập địa chỉ : "
        @address165 = gets.chomp
    end

    def info    
        puts "Tên : #{@name165}"
        puts "Tuối : #{@age165}"
        if @gender165 == 1 
            puts'Giới tính : Nam'
        elsif @gender165 == 0
            puts 'Giới Tính : Nữ'
        else 
            puts 'Giới Tính : Khác'
        end
        puts "Địa chỉ : #{@address165}"
    end
    attr_accessor :name165, :age165, :gender165, :address165
end 



class Congnhan < Canbo

    def initialize
    end

    attr_accessor :name165, :age165, :gender165, :address165, :bac156

    def enter_infomation
        super
        print "Nhập bậc : "
        @bac165 = gets.chomp
    end

    def info 
        super   
        puts "Bậc : #{@bac165}"
    end

end

class Kysu < Canbo

    def initialize
    end

    def enter_infomation
        super
        print "Nhập ngành đào tạo : "
        @nganh165 = gets.chomp
    end
    def info 
        super   
        puts "Ngành : #{@nganh165}"
    end
    attr_accessor :name165, :age165, :gender165, :address165, :nganh165
end

class Nhanvien < Canbo
    def initialize
    end

    def enter_infomation
        super
        print "Nhập công việc : "
        @congviec165 = gets.chomp
    end
    def info 
        super   
        puts "Công việc : #{@congviec165}"
    end
    attr_accessor :name165, :age165, :gender165, :address165, :congviec165

end

class QLCB
    def initialize
    end

    $canbos165 = []
    
    def addCanbo
        puts"1. Nhâp công nhân "
        puts"2. Nhâp Ky su "
        puts"3. Nhập Nhân viên "
        print "Mơi bạn chon  "
        choose = gets.to_i
        if choose ==1 
            canbo165 =Congnhan.new
         
        elsif choose == 2
            canbo165 =Kysu.new
        else 
            canbo165 = Nhanvien.new
        end
        canbo165.enter_infomation
        $canbos165 << canbo165    
    end

    def infomatinon 
        puts "============Danh sách cán bộ là================"    
        $canbos165.each do |canbo165|
            puts canbo165.info
        end
    end

end



$continute = true
while $continute

    quanly165 = QLCB.new
    puts "1. Thêm mới cán bộ."
    puts "2. Tìm kiếm theo tên."
    puts "3. Hiện thị thông tin danh sách cán bộ ."
    puts "4 Thoát khỏi chương trình."

    print "Mời bạn chọn : "
    choose = gets.to_i

    case choose
    when 1
        quanly165.addCanbo
    when 2
       puts "little child"
    when 3
        quanly165.infomatinon
    else
       puts "Xin tạm biệt!"
        $continute165 = false
    end
end