require 'date'

while line = gets
  month, day = line.chomp.split.map(&:to_i)

  if month == 12 && day == 24
    puts 'E vespera de natal!'
  elsif month == 12 && day > 25
    puts 'Ja passou!'
  elsif month == 12 && day == 25
    puts 'E natal!'
  else
    begin_date = Date.parse("#{day}/#{month}/2016").to_datetime
    end_date = Date.parse('25/12/2016').to_datetime

    dif_days = (begin_date...end_date).count
    puts "Faltam #{dif_days} dias para o natal!"
  end

end
