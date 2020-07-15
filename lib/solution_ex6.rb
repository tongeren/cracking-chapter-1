PIXEL_BYTE_SIZE = 4
  
def rotate(i, j, n)
  [n - 1 - j, i]
end

def calc_four(i, j, n)
  i4 = [0, 0, 0, 0]
  j4 = [0, 0, 0, 0]
  # parallel assignment
  i4[0], j4[0] = i, j
  for k in (0..2)
    r = rotate(i4[k], j4[k], n)
    # parallel assignment
    i4[k + 1], j4[k + 1] = r[0], r[1]
  end
  i4.zip(j4)
end

def rotate_four!(i, j, n, a)
  # get an array with the four pairs of coordinates
  c = calc_four(i, j, n)

  # construct an array of the four cells and rotate once
  temp = Array.new(4) do |k| 
    s = c[k][0]
    t = c[k][1]
    a[s][t] 
  end.rotate!

  # set all four cells simultaneously
  (0..3).each do |k|
    s = c[k][0]
    t = c[k][1]
    a[s][t] = temp[k]
  end

  # return partially rotated array
  a
end

def rotate_line!(arr, i, m, n)
  for j in Range.new(0, m - 1)
    rotate_four!(i, j, n, arr)
  end
end

def rotate_block!(arr, m, n)
  for i in Range.new(0, m - 1)
    rotate_line!(arr, i, m, n)
  end
end

# @param   { arr[integer, integer] 4 bytes } image (square matrix)
# @returns { arr[integer, integer] 4 bytes } image rotated by 90 degrees
def rotate_90_degrees!(arr)
  # rotate 90 degrees: 
  # quarter-turn anti-clockwise: (i, j) |-> (-j, i), 
  # translate n - 1 horizontally: (i, j) |-> (n - 1 + i, j)
  # equals: (i, j) |-> (n - 1 - j, i)
  n = arr[0].length
  if n.even? 
    m = 0.5 * n
    rotate_block!(arr, m, n)
  else 
    m = 0.5 * (n - 1)
    rotate_block!(arr, m, n)
    rotate_line!(arr, m, m, n)
  end
  arr
end 
