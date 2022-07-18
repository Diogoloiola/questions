require 'byebug'
line = gets.chomp.to_i
string = ''
users = {}
(1..line).each do
  string = gets.chomp
  next if string.empty?

  words = string.split
  name = words.shift
  users[name.to_sym] = words
end

while line = gets
  name, choice = line.chomp.split

  next puts 'Tente Novamente!' if users[name.to_sym].nil?

  if users[name.to_sym].include?(choice)
    puts 'Uhul! Seu amigo secreto vai adorar o/'
  else
    puts 'Tente Novamente!'
  end
end
