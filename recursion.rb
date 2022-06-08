def itr_range(first, last)
  (first...last).to_a.inject {|acc, el| acc + el }
end

def range(first, last)
  return [] if last <= first 
  [first] + range(first + 1, last)
end


def exp_1(b, n)
  return 1 if n == 0
  return 1 if b == 0
  b * exp_1(b, n - 1)
end

def exp_2(b, n)
  return 1 if n == 0
  return 1 if b == 0
  return b if n == 1
  
  if n.even?
    even_temp = exp_2(b, n / 2) 
    even_temp * even_temp
  else
    odd_temp = exp_2(b, (n-1) / 2)
    b * odd_temp * odd_temp
  end
end


def deep_dup(arr)
  arr.map do |ele|
    if ele.is_a?(Array)
      deep_dup(ele)
    else
      ele
    end
  end
end

def itr_fib(n)
  return [0, 1].take(n) if n <= 2
  sequence = [0, 1]
  while sequence.length < n
    sequence << sequence[-2] + sequence[-1]
  end
  sequence
end

def fib(n)
  return [0, 1].take(n) if n <= 2
  temp = fib(n - 1)
  temp << temp[-1] + temp[-2]
end


def bsearch(arr, target)
  return nil if arr.empty?
  mid_idx = arr.length / 2  
 
  if arr[mid_idx] == target
    return mid_idx

  elsif target < arr[mid_idx].to_i 
    bsearch(arr[0...mid_idx], target)

  else 
    temp = bsearch(arr[(mid_idx + 1)..-1], target)
      if temp == nil
        return nil
      else
        mid_idx + 1 + temp
    end
  end  
end

