# Tạo class sinhvien
# Thiết kế các phương thức cơ bản của class
# Tạo phương thức nhập điểm Toán Lý Hoá của sinh viên, tính điểm trung bình
# In ra các thông tin của sinh viên

class SinhVien
    @diemToan
    @diemLy
    @diemHoa
    @avg_point
    def initialize(id,name,classmate,phone,address)
        @id = id
        @name = name
        @class = classmate
        @phone = phone
        @address = address

    end

    def input_Grade
        print "Nhap vao diem toan: "
        @diemToan = gets.to_f
        print "Nhap vao diem ly: "
        @diemLy = gets.to_f
        print "Nhap vao diem hoa: "
        @diemHoa = gets.to_f      
    end 

    

    def avg_Grade
        @avg_point = (@diemHoa+@diemLy+@diemToan)/3
    end
        

    def get_info
        puts "\n\nThong Tin SV:\n Name: #{@name} , Id: #{@id}, Class: #{@classmate}, Phone: #{@phone}, Address: #{@address}"
        puts "Diem Sinh Vien:  Toan: #{@diemToan} , Ly: #{@diemLy} , Hoa:  #{@diemHoa}"
        avg_Grade
        puts "Diem TB: #{@avg_point}"
    end 
end



# sv2 = SinhVien.new('1911505310165','Nguyen Thi Thoa','19T1','00397927871','Da Nang')
# sv2.input_Grade
# sv2.get_info
