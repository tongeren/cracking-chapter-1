def reset_row_and_column(arr)
  n = arr.length
  m = arr[0].length
  c = [0] * n
  r = [0] * m
  
  # first pass to determine which rows and columns get nulled
  j = 0
  # for every row
  until j > m - 1 
    # if row has been nulled, then move on
    if r[j] == 1
      # fall through
    else
      i = 0
      # for every column
      until i > n - 1
        # if column has been nulled, then move on
        if c[i] == 1
          # fall through
        else
          # if array element is nul, then nul corresponding row and column
          k = arr[i][j]
          # puts k
          if k == 0 
            r[j] = 1
            c[i] = 1
          end
        end
        i += 1 # move to next column
      end 
    end
    j += 1 # move to next row
  end
  
  # Gotchas! Initial value given as object is the same object!
  # DO NOT define 0 array via either
  # b = [[0] * m] * n or
  # b = Array.new(n, Array.new(m, 0))
  # Only safe way is using a block (gets evaluated separately for each slot)
  b = Array.new(n) { |i| Array.new(m, 0) }

  # on second pass only set nonzero array items
  j = 0
  until j > m - 1
    i = 0
    if r[j] == 1
      # skip row j
    else
      until i > n - 1
        if c[i] == 1
          # skip 
        else
          b[i][j] = arr[i][j]
        end 
        i += 1 # move to next column
      end
    end
    j += 1 # move to next row
  end
  b
end
