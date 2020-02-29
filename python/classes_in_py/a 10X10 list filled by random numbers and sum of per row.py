import random 

random.seed(1)

a=[]

for i in range(10):
    temp = []
    for j in range(10):
        temp.append(random.randint(1,10))
    a.append(temp)

for i in a:
    print(i,sum(i))
	
