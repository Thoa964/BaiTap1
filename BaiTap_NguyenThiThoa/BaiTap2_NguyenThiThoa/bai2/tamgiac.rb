puts "Moi ban nhap số a:"
a = gets.chomp.to_f
puts "Moi ban nhap số b:"
b = gets.chomp.to_f
puts "Moi ban nhap số c:"
c = gets.chomp.to_f
if ((a + b > c) || (a + c > b) || (b + c > a)) 
    puts " Đây là tam giác"

else
    puts " Đây không phải tam giác "
end
chuvi= a+b+c
dientich= Math.sqrt(chuvi*(chuvi-a)*(chuvi-b)*(chuvi-c))
puts " Chu vi tam giác là #{chuvi}"
puts " Diện tích tam giác là #{dientich}"
