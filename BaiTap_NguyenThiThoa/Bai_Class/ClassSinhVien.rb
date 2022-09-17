class SinhVien
    def initialize(masv, name, class_0, phone, email)
        @SinhVien_masv = masv
        @SinhVien_name = name
        @SinhVien_class = class_0
        @SinhVien_email = email
        @SinhVien_phone = phone
    end
    def print_SinhVien_info
        puts "===========Thông tin sinh viên là========="
        puts "Mã Sinh Viên : #{@SinhVien_masv}"
        puts "Tên Sinh Viên : #{@SinhVien_name}"
        puts "Lớp Sinh Viên: #{@SinhVien_class}"
        puts "Email Sinh Viên: #{@SinhVien_email}"
        puts "Số điện thoại Sinh Viên : #{@SinhVien_phone}"
        if  @SinhVien_diem_t 
            puts "Điểm Toán: #{@SinhVien_diem_t}"
            puts "Điểm Hóa: #{@SinhVien_diem_h}"
            puts "Điểm Lý: #{@SinhVien_diem_l}"
            puts "Điểm Trung Bình: #{diemtb(@SinhVien_diem_t, @SinhVien_diem_l, @SinhVien_diem_h)}"
        end
    end

    def input_diem()
        print "Nhập điểm môn toán: "
        @SinhVien_diem_t = gets.to_f
        print "Nhập điểm môn lý: "
        @SinhVien_diem_l = gets.to_f
        print "Nhập điểm môn hóa: "
        @SinhVien_diem_h = gets.to_f
    end

    def diemtb(t,l,h)
        return (t+l+h)/3
    end
end


print "Nhập Mã sinh viên: "
masv = gets.chomp
print "Nhập tên sinh viên: "
name = gets.chomp
print "Nhập lớp sinh viên: "
class_0 = gets.chomp
print "NHập số điện thoại: "
phone = gets.chomp
print "Nhập email: "
email = gets.chomp

SinhVien1 = SinhVien.new(masv,name,class_0,phone,email)
SinhVien1.input_diem
SinhVien1.print_SinhVien_info