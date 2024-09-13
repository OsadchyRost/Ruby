def min(ar)
  min=ar[0]
  for i in ar
    if i<min then min = i end
  end
  return min
end

def first(ar)
  ind = 0
  while ind<ar.length && ar[ind]<0
    ind+=1
  end
  ind==ar.length ? -1 : ind
end

ar=[-1,-3,2,4]
puts min(ar).to_s + " #{first ar}"
