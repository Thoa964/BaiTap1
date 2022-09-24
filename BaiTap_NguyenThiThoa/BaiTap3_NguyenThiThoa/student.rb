require_relative 'man.rb'



class Student < Man
    attr_accessor :grade1, :grade2, :grade3, :average 
    def nhap(grade1,grade2,grade3)
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
        @average = (grade1 + grade2 + grade3)*0.1 /3
    end  
    puts "Danh sách sinh viên chưa sắp xếp : \n"
    def show
        puts "Tên : #{name}\n  Giới tính: #{gender}\n  Tuổi: #{age}\n  Tóc: #{hair}\n  Chiều cao: #{height}\n  Cân nặng: #{height}\n  Số điện thoại: #{phone}\n  Email: #{email}\n  Dân tộc: #{nation}\n  Điểm trung bình: #{average}\n"
    end
end
a = Array.new()
Student1 = Student.new("Thoa","Nu","Đen","1m58","47kg","21","0397927870","thoa2503@gmail.com","Kinh")
Student1.nhap(9,9,10)
a.push(Student1)
Student2 = Student.new("Nhi","Nữ","Đen","1m6","45kg","19","0253145875","nhi@gmail.com","Kinh")
Student2.nhap(7,8,9)
a.push(Student2)
Student3= Student.new("Ngan","Nữ","Đen","1m7","45kg","22","02397852321","ngan@gmail.com","Kinh")
Student3.nhap(7,10,9)
a.push(Student3)
a.each_index {
    |index|
    puts "#{a[index].show()}"
}

print "Danh sách sinh viên sau khi sắp xếp theo thứ tự giảm dần:\n"
for x in a.sort_by{|stu|[-stu.average]} do
    puts "#{x.show}"
end