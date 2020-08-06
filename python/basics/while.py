

inp = input()
# oun string e shamel e ye adad
# "12345"


rev = inp[ : : -1]
# "54321"

adad = int(rev)
# tabdil be adad

tool = len(rev)
# tool e reshte voroudi


i = 0
while i < tool:

    ragham = adad % 10
     # ragham samt rast

    ####### Block 1 #####
    print(str(ragham)+": ",end="")
    j = 0
    while j < ragham:
        print(ragham,end="")
        j = j +1
    print()
    ###################


    adad = adad // 10
    # ragham rast ro kam kon
    # masalan 54321 -> 5432

    i = i+1
