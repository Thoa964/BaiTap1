require_relative 'Family.rb'
require_relative 'Town.rb'
require_relative 'Person.rb'

listFamily = Town.new


while (true)
    p "--------------------------------------------"
    puts("MANAGEMENT FAMILY");
    puts("Enter 1: To insert Family");
    puts("Enter 2: To print ALL Family");
    puts("Enter 3: To Exit: " );

    print "Moi nhap lua chon cua ban: "
    index_205 = gets.to_i

    case index_205 
    when 1
        p "------------------- NHAP VAO FAMILY -------------------"
        print("Nhap vao dia chi: ")
        addr = gets.chomp.to_s
        family = Family.new(addr)
        while(true)
            puts "Ban co muon nhap vao thanh vien cua gia dinh nay ?"
            puts "Enter 1: Nhap TV"
            puts "Enter 2: Thoats"
            
            print "Moi nhap lua chon: "
            choosen = gets.to_i
            
            case choosen
            when 1
                while true
                    print("Nhap vao CMND: ")
                    id = gets.chomp.to_s
                    if (listFamily.check_DuplicateID(id) == true || family.check_DuplicateIDinFamily(id) == true)
                        p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                    else break
                    end
                end
                        
                print("Nhap vao Ten: ")
                name = gets.chomp.to_s
                print("Nhap vao Tuoi: ")
                age = gets.to_i
                print("Nhap vao Nghe nghiep: ")
                job = gets.chomp.to_s

                person = Person.new(id,name,age,job)
                family.listPerson << person
                
            else 
                listFamily.listFamily << family
                break
            end
        end

    when 2
        listFamily.townInfo
    else 
        p "KET THUC CHUONG TRINH !"
        break
    end
end

