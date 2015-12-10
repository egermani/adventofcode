# DAY 1

def stairclimb(input)
  position = 0
  counter = 1

  upstairs = input.chars.take_while do |e|
    position += e == "(" ? 1 : -1
    counter += 1
    position > 0
  end

  counter
end