arr = Array.new
puts " Nhap so phan tu cua mang: "
n= gets.to_i
for i in (0..n-1) do
    puts " Nhap cac phan tu cua mang a[#{i}]"
    arr[i]=gets.to_i
end
puts "Mang la #{arr}"
puts "Max của mảng là #{arr.max}"
puts "Max của mảng là #{arr.min}"
puts "Trung bình của mảng là #{arr.sum/n}"