print("enter binary digits 8 by 8 ")
all = ""
while True :
	a = input()
	if a in  ["exit" , "quit" , "x" , "e"] : break
	bit = a;
	all_bit = a.split(" ")
	for bit in all_bit:
		if len(bit) != 8 :
			print("err" , end = " ")
			continue
		bit = int(bit,2)
		ans =  chr(bit)
		print(ans, end = " ")
		all = all + ans + ""
print("all of text : \n" , all)
