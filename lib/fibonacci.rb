# goal: fibonacci sequence up to the n specified e.g. fibs(8) should give the first 8 numbers of the sequence

# fibonacci sequence using iteration
def fibs(n, sequence = [])
  for i in 0...n
    if i == 0 || i == 1
      sequence.push(i)
    elsif i == 2
      sequence.push(i - 1)
    else
      sequence.push(sequence[i - 1] + sequence[i - 2])
    end
  end
  sequence
end

# p fibs(8)

# fibonacci sequence using recursion
def fibs_rec(n, sequence = [])
  if n == 0 || n == 1
    sequence[n] = n
    return n
  else
    sequence[n] = fibs_rec(n - 1) + fibs_rec(n - 2)
    # return fibs_rec(n - 1) + fibs_rec(n - 2)
  end
  sequence
end

p fibs_rec(4)

# let's say 4...
# fibs_rec(3) + fibs_rec(2) = fibs_rec(2) + fibs_rec(1) + fibs_rec(2) = 1 + 1 + 1
# if the number is 0 or 1, I need to just push that into the array
# if the number is 2 or higher, I need to put the value of fibs(number - 1) + fibs(number - 2) into the array
