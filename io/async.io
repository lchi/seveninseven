obj1 := Object clone
obj1 test := method(for(n, 1, 3, n print))
obj2 := obj1 clone
obj1 asyncSend(test); obj2 asyncSend(test)
while(Scheduler yieldingCoros size > 1, yield)
