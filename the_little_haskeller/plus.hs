plus n 0 = n
plus n m = succ (plus n (pred m))

plusComp n 0 = n
plusComp n m = (succ . plusComp n) (pred m)
