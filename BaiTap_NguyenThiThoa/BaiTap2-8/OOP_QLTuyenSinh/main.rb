require_relative 'CandidateManage.rb'
require_relative 'CandidateA.rb'
require_relative 'CandidateB.rb'
require_relative 'CandidateC.rb'

listCandidate = CandidateManage.new


while (true)
    p "--------------------------------------------"
    puts("MANAGEMENT CANDIDATE");
    puts("Enter 1: To insert Candidate");
    puts("Enter 2: To print Candidate");
    puts("Enter 3: To Search Candidate by ID: " );
    puts("Enter 4: To Exit: " );

    print "Moi nhap lua chon cua ban: "
    index_205 = gets.to_i

    case index_205 
    when 1
        p "-------- INSERT CANDIDATE: ----------------"
        puts("Enter 1: CANDIDATE A");
        puts("Enter 2: CANDIDATE B");
        puts("Enter 3: CANDIDATE C");
        puts("Enter 4: EXIT");
        print "Moi nhap lua chon cua ban: "
        choosen_205 = gets.to_i

        case choosen_205
        when 1
            p "-------- NHAP VAO CANDIDATE A: ----------------"
            while true 
                print("nhap vao id: ")
                id= gets.chomp.to_s 
                if (listCandidate.check_DuplicateID(id) == true)
                    p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                else break
                end
            end

            print("nhap vao Ten Thi Sinh : ")
            name = gets.chomp.to_s
            print("nhap vao dia chi : ")
            addr = gets.chomp.to_s
            print("nhap vao Uu Tien: ")
            priority = gets.chomp.to_s
            print("nhap vao Diem Toan: ")
            toan = gets.to_f
            print("nhap vao Diem Ly : ")
            ly = gets.to_f
            print("nhap vao Diem Hoa: ")
            hoa = gets.to_f

            candidateA =CandidateA.new(id,name,addr,priority,toan,ly,hoa)

            listCandidate.addCandidate(candidateA)
        when 2
           p "-------- NHAP VAO CANDIDATE B: ----------------"
            while true 
                print("nhap vao id: ")
                id = gets.chomp.to_s 
                if (listCandidate.check_DuplicateID(id) == true)
                    p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                else break
                end
            end

            print("nhap vao Ten Thi Sinh : ")
            name = gets.chomp.to_s
            print("nhap vao dia chi : ")
            addr = gets.chomp.to_s
            print("nhap vao Uu Tien: ")
            priority = gets.chomp.to_s
            print("nhap vao Diem Toan: ")
            toan = gets.to_f
            print("nhap vao Diem Sinh : ")
            sinh = gets.to_f
            print("nhap vao Diem Hoa: ")
            hoa = gets.to_f

            candidateB =CandidateB.new(id,name,addr,priority,toan,sinh,hoa)
            
            listCandidate.addCandidate(candidateB)
        when 3
            p "-------- NHAP VAO CANDIDATE C: ----------------"
            while true 
                print("nhap vao id: ")
                id = gets.chomp.to_s 
                if (listCandidate.check_DuplicateID(id) == true)
                    p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                else break
                end
            end

            print("nhap vao Ten Thi Sinh : ")
            name = gets.chomp.to_s
            print("nhap vao dia chi : ")
            addr = gets.chomp.to_s
            print("nhap vao Uu Tien: ")
            priority = gets.chomp.to_s
            print("nhap vao Diem Van: ")
            van = gets.to_f
            print("nhap vao Diem Su : ")
            su = gets.to_f
            print("nhap vao Diem Dia: ")
            dia = gets.to_f

            candidateC =CandidateC.new(id,name,addr,priority,van,su,dia)
            
            listCandidate.addCandidate(candidateC) 
        else 
            p "Ket thuc Nhap"
        end

    when 2
        p "-------DANH SACH THI SINH-----------"
        listCandidate.printCandidate
    
    when 3
        p "------TIM KIEM CANDIDATE BY ID---------"
        print "Nhap ID can tim kiem : "
        search_choosen_205 = gets.chomp.to_s
        listCandidate.search_ID(search_choosen_205)
    else
         p "Ket Thuc Chuong Trinh"
         break
    end
end
