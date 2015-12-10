def line_parse(boxstring)
  sides = boxstring.chomp.split("x").map(&:to_i).sort
end

def wrapping_paper(sides)
  coverage = sides.combination(2).reduce(0) {|memo, item| memo + (2 * item[0] * item[1])}
  slack = sides[0] * sides[1]
  coverage + slack
end

def ribbon_length(sides)
  shortest, shorter = sides[0], sides[1]
  volume = sides.reduce(:*)
  shortest * 2 + shorter * 2 + volume
end

total_footage = IO.readlines("input").reduce(0) { |memo, line| memo + wrapping_paper(line_parse(line)) }

total_ribbonage = IO.readlines("input").reduce(0) { |memo, line| memo + ribbon_length(line_parse(line)) }

puts "Total Wrapping Paper: #{total_footage}"

puts "Total Wrapping Paper: #{total_ribbonage}"
