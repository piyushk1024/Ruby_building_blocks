=begin
puts "Enter text to scramble"
t = gets.chomp
t = t.split("")
puts "Enter shift by value"
s = gets.chomp.to_i
=end
def caesar_cipher(t,s)
  t = t.split("")
  shift_t =[]
  t.each do |x|
    if x.ord >=65 && x.ord <=90
      x = ((x.ord + s - 65)%26 + 65).chr
    elsif x.ord >=97 && x.ord <=122
      x = ((x.ord + s - 97)%26 + 97).chr
    end
    shift_t.push(x)
  end
  p shift_t.join()
end
caesar_cipher("What a string!",5)
