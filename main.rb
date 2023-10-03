# fibonacci using iteration


def fib(n)
  arr = []
  i = 0
  while i < n
    if i == 0
      arr << 0
    elsif i == 1
      arr << 1
    else
     arr << arr[-1] + arr[-2]
    end
    i += 1
  end
  arr
end

# fibonacci using recursion

def fib_rec(n)

  # base cases 0 and 1
  return [0] if n == 0
  return [0, 1] if n == 1

  array = fib_rec(n - 1)
  # add the last two to form new elements
  array << array[-2] + array[-1]
end

puts fib_rec(8)