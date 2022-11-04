class PhanSo

    attr_accessor :tuso,:mauso

    def initialize(tuso,mauso)
        @tuso = tuso
        @mauso = mauso

    end

    def timUSCLN(a, b)
        while (a != b)
            if (a > b) 
                a -= b
            else 
                b -= a
            end
        end
        return a
    end

    def +(phanso_2)

        tu_plusOperator = @tuso * phanso_2.mauso + phanso_2.tuso * @mauso

        mau_plusOperator = @mauso * phanso_2.mauso

        @ucln = timUSCLN(tu_plusOperator,mau_plusOperator)


        return ("Tong 2 PS la: #{tu_plusOperator/@ucln} / #{mau_plusOperator/@ucln}")
    end

    def -(phanso_2)

         

        tu_subtractOperator = @tuso * phanso_2.mauso - phanso_2.tuso * @mauso

        mau_subtractOperator = @mauso * phanso_2.mauso
        
        @ucln = timUSCLN(tu_subtractOperator.abs(),mau_subtractOperator)

        return ("Hieu 2 PS la: #{tu_subtractOperator/@ucln} / #{mau_subtractOperator/@ucln}")
    
    end

    def *(phanso_2)

        tu_multiOperator = @tuso * phanso_2.tuso

        mau_multiOperator = @mauso * phanso_2.mauso

        @ucln = timUSCLN(tu_multiOperator,mau_multiOperator)

        return ("Tich 2 PS la: #{tu_multiOperator/@ucln} / #{mau_multiOperator/@ucln}")
    
    end

    def /(phanso_2)

        tu_divisionOperator = @tuso * phanso_2.mauso

        mau_divisionOperator = @mauso * phanso_2.tuso

        @ucln = timUSCLN(tu_divisionOperator,mau_divisionOperator)

        return ("Thuong 2 PS la: #{tu_divisionOperator/@ucln} / #{mau_divisionOperator/@ucln}")
    
    end

end

def checkZero(num)
    if num == 0 
        return true
    end
    return false
end


p('--------Nhap phan so thu nhat--------')
print('Nhap tu so: ')
ts1 = gets.to_f
while (true)
    print('Nhap mau so: ')
    ms1 = gets.to_f

    if(checkZero(ms1) == true)
        p "Mau so phai khac 0"
    else 
        break
    end

end


p('--------Nhap phan so thu hai--------')
print('Nhap tu so: ')
ts2 = gets.to_f
print('Nhap mau so: ')
while (true)
    print('Nhap mau so: ')
    ms2 = gets.to_f

    if(checkZero(ms2) == true)
        p "Mau so phai khac 0"
    else 
        break
    end

end

phanso1 = PhanSo.new(ts1,ms1)
phanso2 = PhanSo.new(ts2,ms2)

p phanso1+phanso2
p phanso1-phanso2
p phanso1*phanso2
p phanso1/phanso2