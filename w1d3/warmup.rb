def range(a,b)
  array = []
  if a <= b
    array << a
    return array if a == b
    return array + range(a + 1, b)
  end

  array
end

def exp(b,n)
  if n == 0
    return 1
  end
  exp(b, n - 1) * b
end

def exp1(b,n)
  if n == 0
    return 1
  else
    return exp1(b, n/2)**2  if n.even?
    return b * exp1(b, (n - 1)/2 )**2
  end
end
