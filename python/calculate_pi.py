from random import random

def in_circle(x,y):
    dist_p2 = (x-0.5)*(x-0.5) + (y-0.5)*(y-0.5)
    return dist_p2 < 0.25

iter_count = 10 ** 7
all_points = iter_count
circle_points = 0

for i in range(iter_count):
    x, y = random(), random()
    circle_points += in_circle(x, y)

print(f" pi is : {4.0 * circle_points/all_points}")
