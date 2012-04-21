List myAverage := method(
  total := 0
  call target foreach(value,
    total = total + value)
  return total / call target size)

mylist := list(1,2,3,4,5,6)
mylist myAverage println
