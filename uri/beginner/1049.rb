# frozen_string_literal: true

option1 = gets.chomp
option2 = gets.chomp
option3 = gets.chomp

case option1
when 'vertebrado'
  case option2
  when 'mamifero'
    if option3 == 'onivoro'
      puts 'homem'
    else
      puts 'vaca'
    end
  when 'ave'
    if option3 == 'carnivoro'
      puts 'aguia'
    else
      puts 'pomba'
    end
  end
when 'invertebrado'
  case option2
  when 'inseto'
    if option3 == 'hematofago'
      puts 'pulga'
    else
      puts 'lagarta'
    end
  when 'anelideo'
    if option3 == 'hematofago'
      puts 'sanguessuga'
    else
      puts 'minhoca'
    end
  end
end
