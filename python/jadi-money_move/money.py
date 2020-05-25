from random import randint as rnd
from random import randrange as rangee
from random import choice
from matplotlib import  pyplot as plt

tedad_people = 100
db = []    
tedad_mohasebe = 2 * 10**6
# 6.4 for 2* 10**6
# 3.5 for 2* 10**6 with remove per 10000
# 4.5 for 2* 10**6 with remove per 10000 with rand int better numbers
first_money = 100

def person_chooser():
    while True:
        rand = rnd(0,len(db)-1)
        if db[rand] > 0: return rand; 

def move():
    global db
    p1 , p2 = person_chooser() , person_chooser()
    db[p2]-=1
    db[p1]+=1

def init_db():
    for i in range(tedad_people):
        db.append(first_money)

def chap_num():
    for i in  sorted(db):
        print(i, end = " - ")        
    print("\n sum is ", sum(db))

def chap_bar():
    dbc = db
    dbc = [0]* (tedad_people-len(db)) + db
    plt.bar(range(len(dbc)),sorted(dbc))
    plt.show()


init_db()
first_out = False;
for i in range(tedad_mohasebe): #base for
    move();
#    continue
    try:
        if(i%1000 == 0): 
            db.sort(reverse = True)
            last_zero = db.index(0) + 1
            db = db[:last_zero]
            if(first_out == False):
                print("first out : ",i)
                first_out = True
    except: 
        pass        
    

chap_num()
print("\n" + "*"*5)
chap_bar()