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
