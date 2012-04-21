mylist := list(list(1,2,3),list(4,5,6),list(7,8,9))

add2D := method(arr,
  sum := 0
  for(i, 0, arr size - 1,
    for(j, 0, arr size - 1,
      sum = sum + arr at(i) at(j)))
  sum println)

add2D(mylist)
