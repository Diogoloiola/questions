def parse(string, salt)
  alfabeto = ('A'..'Z').to_a

  (0..string.size - 1).each do |index|
    index_string =  salt - (alfabeto.index string[index])
    string[index] = if index_string.negative?
                      alfabeto[index_string * - 1]
                    else
                      alfabeto[alfabeto.size - index_string].nil? ? alfabeto[0] : alfabeto[alfabeto.size - index_string]
                    end
  end
  string
end

line = gets.to_i

(0..line - 1).each do
  string = gets.strip
  number = gets.to_i
  puts parse(string, number)
end
