import random
class point:
    def __init__(self): # initialize point
        self.x=0
        self.y=0
        
    def distance_from_o(self):
        import math
        return math.sqrt(pow(self.x,2)+pow(self.y,2))
    
    def distance_from_another(self,other):
        import math
        return math.sqrt(pow(self.x-other.x,2)+pow(self.y-other.y,2))

    def print(self):
    
#    this  function will print  parametrs of selected point
        print ("point.x is {}  and point.y is {}".format(self.x,self.y))    
        print()


    def jabejaee(self,x,y):
#        this function will move point by delte x and delta y to a new location
        self.x += x
        self.y += y

    def gharine(self,x,y):
#       این تابع نقطه مورد نظر رو نسبت به محور X ,  Y  بر اساس ورودی داده شده قرینه می کند 
       if x : self.x = -1 * self.x
       if y : self.y = -1 * self.y
    
p = point()
print ("welcome to point manager program ypu are client number {} ".format(random.randint(100,200)))
# previus line was just random test :)
p.x , p.y = input("pls enter x , y of our point: ").split()
p.x , p.y = int(p.x) , int(p.y)
p.print()

try:
    jx , jy = input ("pls enter delta X and delta Y :  ").split()
    jx , jy = int(jx) , int(jy) 
    p.jabejaee(jx,jy)
    p.print()
except: 
    print ("our point didnt move")


try:
    ghX , ghY = input ("pls enter gharine status X and  Y(true or false) :  ").split()
    if ghX == "true" or ghX == "t" or ghX == "True" : ghX = True 
    else : ghX = False
    if ghY == "true" or ghY == "t" or ghY == "True" : ghY = True 
    else : ghY = False
    p.gharine(ghX,ghY)
    p.print()
except: 
    print ("our point didnt reversed")
# note that if client enter more than 2 numbers (or less than 2!) or even if client press enter to ignore thsi step!

print ("\n thanks for using this program :)")






