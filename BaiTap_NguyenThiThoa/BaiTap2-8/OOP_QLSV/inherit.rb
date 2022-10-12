class Man
    def initialize(name,gender,haircolor,height,weight,phone,email)
        @name = name 
        @gender = gender
        @haircolor = haircolor
        @height = height
        @weight = weight
        @phone = phone
        @email = email 
    end

    def get_info
        "Name: #{@name}\nGender: #{@gender}\nHaircolor: #{@haircolor}\nHeight: #{@height}\nWeight: #{@weight}\nPhone: #{@phone}\nEmail #{@email}"
    end 
end 


class Student < Man

    @avg_point.to_f

    def initialize(name,gender,haircolor,height,weight,phone,email,school,student_id,classmate,grade1,grade2,grade3)
        @name = name 
        @gender = gender
        @haircolor = haircolor
        @height = height
        @weight = weight
        @phone = phone
        @email = email
        @school = school
        @student_id = student_id
        @classmate = classmate
        @grade1 = grade1.to_f
        @grade2 = grade2.to_f
        @grade3 = grade3.to_f
        @avg_point=(@grade1 + @grade2 + @grade3)/3
    end 
    attr_accessor :avg_point  
    def get_info  
        puts "\n----------------------------------------------------------------\n"
        "Name: #{@name}\nGender: #{@gender}\nHaircolor: #{@haircolor}\nHeight: #{@height}\nWeight: #{@weight}\nPhone: #{@phone}\nEmail: #{@email}\nSchool: #{@school}\nStudent ID: #{@student_id}\nClassmate: #{@classmate}\nAvg = #{@avg_point}"
    end
    
end

stus = Array.new

stu1 = Student.new("Nguyen Thi Thoa","Nu","Black","8.5","75","0397927871","thiThoa@gmail.com","UTE","19011505310165","19T1",7.0,8.0,9.0)
stu2 = Student.new("Nguyen Anh Thi","Nam","Black","8.5","75","0369852147","anhthi@gmail.com","UTE","19011505310123","19T1",6.0,3.0,6.0)
stu3 = Student.new("Nguyen Tan Anh Kiet","Nam","black","9.15","75","0362514456","anhkiet@gmail.com","UTE","19011505310108","19T1",5.0,6.0,7.0)


stus << stu1
stus << stu2
stus << stu3

puts "\n      DANH SACH TRUOC KHI SAP XEP: "

stus.each do |stu|
    puts stu.get_info
end

stuArr_afterSort = stus.sort! { |a, b|  b.avg_point <=> a.avg_point }

puts "\n      DANH SACH SAU KHI SAP XEP: "

stuArr_afterSort.each do |stu|
    puts stu.get_info
end 















