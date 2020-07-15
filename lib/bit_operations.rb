def set_kth_bit(n, k)
  (1 << k) | n
end

def unset_kth_bit(n, k)
  (~(1 << k)) & n
end

def get_kth_bit(n, k)
  (n >> k) & 1
end