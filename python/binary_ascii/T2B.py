print("please enter you text to change it to binary")
all = ""
while True:
	a = input()
	if a in ["break" , "quit" , "exit" ] : break
	ans = '';
	for x in a:
		ans = format(ord(x), 'b')
		l = len(ans)
		t0 = 8 - l
		ans = "0"*t0 + ans
		all = all + ans + " ";
		print (ans)
print ("all of it is \n" , all)
