class point:
    def __init__(self):
        self.x=0
        self.y=0

def dis(p1,p2):
    import math
    sqrt = math.sqrt
    return(sqrt((p1.x-p2.x)**2 + (p1.y-p2.y)**2))
    
p = point()
p.x = 3
p.y = 4

q = point()
q.x = 2
q.y = 8

print(dis(p,q))