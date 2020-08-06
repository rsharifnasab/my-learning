

inp = input()
# oun string e shamel e ye adad
# "12345"


rev = inp[ : : -1]
# "54321"

adad = int(rev)
# tabdil be adad

tool = len(rev)
# tool e reshte voroudi

for i in range(tool):
    ragham = adad % 10
     # ragham samt rast

    ####### Block 1 #####
    print(str(ragham)+": ",end="")
    for j in range(ragham):
        print(ragham,end="")
    print()
    ###################


    adad = adad // 10
    # ragham rast ro kam kon
    # masalan 54321 -> 5432
