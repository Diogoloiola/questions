# frozen_string_literal: true

def generate(num_rows)
  triangule = [[1], [1, 1]]

  return [triangule[0]] if num_rows == 1
  return triangule if num_rows == 2

  index = 1

  loop do
    break if triangule.size == num_rows

    row = triangule[index]

    new_row = []
    new_row << 1

    row.each_with_index do |_v, key|
      next if (new_row.size + 1) > row.size

      new_row << if key + 1 < row.size - 1
                   row[key] + row[key + 1]
                 else
                   row[key] + 1
                 end
    end
    new_row << 1
    triangule << new_row
    index += 1
  end

  triangule
end
