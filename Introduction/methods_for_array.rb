def min_el(arr)
  min = arr[0]
  for i in 1...arr.size
    min = arr[i] if (arr[i] < min)
  end

  return min
end


def pos_el(arr)
  positive_elements = []
  for i in 0...arr.size
    positive_elements.append(arr[i]) if arr[i] > 0 
  end
  return positive_elements
end


def first_pos_ind(arr)
  for i in 0...arr.size
    return i if arr[i] > 0
  end
  return nil 
end


if ARGV[1] != nil then
  string = File.open("#{ARGV[1]}.txt"){ |file| file.read }
  #Вывод считанного файла
  puts string
  #Разделение элементов строки на элементы массива
  array_from_file = string.split(%r{ \s*}) 
  
  for i in 0..array_from_file.size-1 do
    array_from_file[i] = Float(array_from_file[i])
  end
  
  if (ARGV[0] == "1") then
    result = min_el(array_from_file)
  elsif (ARGV[0] == "2") then
    result = pos_el(array_from_file)
  elsif (ARGV[0] == "3") then
    result = first_pos_ind(array_from_file)
  end

  puts "Ответ = #{result}"
else
  puts "Необходимо ввести название файла"
end


