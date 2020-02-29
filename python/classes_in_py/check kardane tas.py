import random

#random.seed(0)

def tas():
    return random.randint(1,6);

#counts = {1:0 , 2:0 , 3:0 , 4:0 , 5:0 , 6:0}
counts = [0,0,0,0,0,0]
n=1000000

for i in range(n):
    counts[tas()-1]+=1;

print(counts)

for i in range(6):
    print(counts[i]*100/n)
