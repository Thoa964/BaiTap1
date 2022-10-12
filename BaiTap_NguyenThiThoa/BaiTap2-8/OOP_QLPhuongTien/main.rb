require_relative 'XeMay.rb'
require_relative 'XeTai.rb'
require_relative 'Oto.rb'
require_relative 'QLPTGT.rb'

qlptgt = QLPTGT.new

# oto = Oto.new("id","hsx","nsx","dongxe","gia","bienso","mau","soccho","dongCo","nhienLieu","soTuiK","ngayDK")
# xemay = XeMay.new("id2","hsx2","nsx2","dongxe2","gia2","bienso2","mau2","congSuat2","DungTich2")
# xetai = XeTai.new("id3","hsx3","nsx3","dongxe3","gia3","bienso3","mau3","trongTai3")

# qlptgt.themDS(oto)
# qlptgt.themDS(xemay)
# qlptgt.themDS(xetai)

# qlptgt.inDS



while (true)
    p "--------------------------------------------"
    puts("QUAN LY PHUONG TIEN GIAO THONG");
    puts("Enter 1: Them Phuong Tien");
    puts("Enter 2: In Danh Sach Phuong Tien");
    puts("Enter 3: Xoa Phuong Tien: " );
    puts("Enter 4: Tim Phuong Tien: " );
    puts("Enter 5: Ket Thuc:");

    print "Moi nhap lua chon cua ban: "
    index_165 = gets.to_i

    case index_165 
    when 1
        p "-------- NHAP VAO PHUONG TIEN: ----------------"
        puts("Enter 1: Nhap Oto");
        puts("Enter 2: Nhap Xe May");
        puts("Enter 3: Nhap Xe Tai");
        puts("Enter 4: Thoat");
        print "Moi nhap lua chon cua ban: "
        choosen_165 = gets.to_i

        case choosen_165
        when 1
            p "-------- NHAP VAO OTO: ----------------"
            while true 
                print("nhap vao id: ")
                id_165 = gets.chomp.to_s 
                if (qlptgt.check_DuplicateID(id_165) == true)
                    p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                else break
                end
            end

            print("nhap vao Hang San Xuat : ")
            hsx_165 = gets.chomp.to_s
            print("Nhap vao Nha SX : ")
            nsx_165 = gets.chomp.to_s
            print("nhap vao Dong Xe: ")
            dongxe_165 = gets.chomp.to_s
            print("nhap vao gia: ")
            gia_165 = gets.to_i
            print("nhap vao bien so: ")
            bienso_165 = gets.chomp.to_s
            print("nhap vao mau: ")
            mau_165 = gets.chomp.to_s
            print("nhap vao soCho: ")
            soCho_165 = gets.to_i
            print("nhap vao Dong Co: ")
            dongCo_165 = gets.chomp.to_s
            print("nhap vao Nhien Lieu: ")
            nhienLieu_165 = gets.chomp.to_s
            print("nhap vao so Tui Khi: ")
            soTuiK_165 = gets.to_i
            print("nhap vao ngay DK: ")
            ngayDK_165 = gets.chomp.to_s
            # oto = Oto.new("id","hsx","nsx","dongxe","gia","bienso","mau","soccho","dongCo","nhienLieu","soTuiK","ngayDK")
            oto = Oto.new(id_165,hsx_165,nsx_165,dongxe_165,gia_165,bienso_165,mau_165,soCho_165,dongCo_165,nhienLieu_165,soTuiK_165,ngayDK_165)
            
            qlptgt.themDS(oto)
           
        when 2
            p "-------- NHAP VAO XE MAY: ----------------"
            while true 
                print("nhap vao id: ")
                id_165 = gets.chomp.to_s 
                if (qlptgt.check_DuplicateID(id_165) == true)
                    p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                else break
                end
            end

            print("nhap vao Hang San Xuat : ")
            hsx_165 = gets.chomp.to_s
            print("Nhap vao Nha SX : ")
            nsx_165 = gets.chomp.to_s
            print("nhap vao Dong Xe: ")
            dongxe_165 = gets.chomp.to_s
            print("nhap vao gia: ")
            gia_165 = gets.to_i
            print("nhap vao bien so: ")
            bienso_165 = gets.chomp.to_s
            print("nhap vao mau: ")
            mau_165 = gets.chomp.to_s
            print("nhap vao Cong Suat: ")
            congSuat_165 = gets.chomp.to_s
            print("nhap vao Dung Tich: ")
            dungTich_165 = gets.chomp.to_s

            # xemay = XeMay.new("id2","hsx2","nsx2","dongxe2","gia2","bienso2","mau2","congSuat2","DungTich2")
            xemay = XeMay.new(id_165,hsx_165,nsx_165,dongxe_165,gia_165,bienso_165,mau_165,congSuat_165,dungTich_165)

            qlptgt.themDS(xemay)
        when 3
            p "-------- NHAP VAO XE TAI: ----------------"
            while true 
                print("nhap vao id: ")
                id_165 = gets.chomp.to_s 
                if (qlptgt.check_DuplicateID(id_165) == true)
                    p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                else break
                end
            end

            print("nhap vao Hang San Xuat : ")
            hsx_165 = gets.chomp.to_s
            print("Nhap vao Nha SX : ")
            nsx_165 = gets.chomp.to_s
            print("nhap vao Dong Xe: ")
            dongxe_165 = gets.chomp.to_s
            print("nhap vao gia: ")
            gia_165 = gets.to_i
            print("nhap vao bien so: ")
            bienso_165 = gets.chomp.to_s
            print("nhap vao mau: ")
            mau_165 = gets.chomp.to_s
            print("nhap vao Trong Tai: ")
            trongTai_165 = gets.chomp.to_s
            # xetai = XeTai.new("id3","hsx3","nsx3","dongxe3","gia3","bienso3","mau3","trongTai3")
            xetai = XeTai.new(id_165,hsx_165,nsx_165,dongxe_165,gia_165,bienso_165,mau_165,trongTai_165)   
            qlptgt.themDS(xetai) 
        else 
            p "Ket thuc Nhap"
        end

    when 2
        p "-------DANH SACH PHUONG TIEN-----------"
        qlptgt.inDS
    when 3
        p "------XOA PHUONG TIEN THEO ID---------"
        print "Nhap ID can Xoa: "
        deleteID_165 = gets.chomp.to_s
        qlptgt.deleteTL(deleteID_165)
        p "Xoa Thanh Cong !"    
    when 4
        p "------TIM KIEM PHUONG TIEN THEO LOAI---------"
        puts("Enter 1: tim Hang SX");
        puts("Enter 2: Tim Bien");
        puts("Enter 3: Tim mau");
        puts("Enter 4: to Exit");
        print "Nhap lua chon cua ban: "
        search_choosen_165 = gets.to_i
        case search_choosen_165
        when 1
            print("Nhap vao HSX: ")
            s_hsx_165 = gets.chomp.to_s
            qlptgt.search_HSX(s_hsx_165)
        when 2
            print("Nhap vao Bien: ")
            s_bien_165 = gets.chomp.to_s
            qlptgt.search_BienSo(s_bienso_165)
        when 3
            print("Nhap vao Mau: ")
            s_mau_165 = gets.chomp.to_s
            qlptgt.search_Mau(s_mau_165)  
        else
            p "Ket thuc tim kiem"
        end
    else
         p "Ket Thuc Chuong Trinh"
         break
    end
end




