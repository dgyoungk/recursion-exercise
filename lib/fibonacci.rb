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
def fibs_rec(n, sequence = (0..1).to_a)
  if n <= sequence.length
    return sequence[0...n]
  end
  fibs_rec(n, sequence << sequence[-1] + sequence[-2])
end

p fibs_rec(10)

# if the number is 0 or 1, I need to just push that into the array
# if the number is 2 or higher, I need to put the value of fibs(number - 1) + fibs(number - 2) into the array
# the issue is that I can get the number to put into the array, but I can't actually put it into the array...
