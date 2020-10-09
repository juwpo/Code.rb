#Шифрование
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
require 'digest'
a = "1.MD5"
b = "2.SHA1"
puts "Введите слово или фразу для шифрования"
user = gets.to_s
puts "Каким способом зашифровать?
 #{a}
 #{b}"
code = gets.to_i
puts "Вот что получилось"
if code == 1
  puts "MD5 = " + Digest::MD5.hexdigest(user)
else
  puts "SHA1 = " + Digest::SHA1.hexdigest(user)
end






