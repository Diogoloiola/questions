while string = gets.strip
  hash = {}
  string.each_char do |caracter|
    if hash[caracter.to_sym].nil?
      hash[caracter.to_sym] = 1
    else
      hash[caracter.to_sym] += 1
    end
  end

  hash.sort_by { |element| element[0].to_s.ord }.each do |value|
    puts "#{value[0]} #{value[1]}"
  end
end
