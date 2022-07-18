while string = gets
  string = string.strip
  case string
  when 'esquerda'
    puts 'ingles'
  when 'direita'
    puts 'frances'
  when 'nenhuma'
    puts 'portugues'
  else
    puts 'caiu'
  end
end
