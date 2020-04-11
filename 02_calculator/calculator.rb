#write your code here
def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(arr)
  arr.reduce(0,:+)
end

def multiply(*numbers)
  numbers.reduce(:*)
end

def power(a,b)
  a**b
end

def factorial(a)
  result = 1
  i = 1
  if a != 0
    while i <= a
      result *= (i)
      i += 1
    end
    result
  else
    result = 1
  end
end

factorial(1)