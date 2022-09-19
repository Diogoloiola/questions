months = %w[January
            February
            March
            April
            May
            June
            July
            August
            September
            October
            November
            December]
month = gets.chomp.to_i - 1

puts months[month]
