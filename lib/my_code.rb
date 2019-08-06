# Your Code Here
def map(source_array) 
  index = 0
  source_array.each do |number|
    source_array[index] = yield(number)
    index += 1
  end
  source_array
end

def reduce(source_array, starting_point = 0)
  value = starting_point
  source_array.each do |element|
    value = yield(value, element)
  end
  value
end