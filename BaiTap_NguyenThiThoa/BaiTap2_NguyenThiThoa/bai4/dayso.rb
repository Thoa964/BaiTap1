puts "Moi ban nhap số a:"
a = gets.chomp.to_i
puts "Moi ban nhap số b:"
b = gets.chomp.to_i
puts "Moi ban nhap số c:"
c = gets.chomp.to_i
if (a > b)
  tg=a
  a=b
  b=tg
end
if (a>c)
    tg=a
    a=c
    c=tg
end
if (b >c)
    tg=b
    b=c
    c=tg
end
puts " day giam dan la #{c} #{b} #{a} "
puts " day tang dan la #{a} #{b} #{c} "


