def mfind(string,ch):
	a = 0
	for i in string:
		a+=1
		if i == ch : return a
	return -1

s = input("Enter a string : ")
ch = input("Enter a character : ")

index = mfind(s,ch)

if index == -1:
    print("The char is not in the str")
else:
    print("The index of first occur of",ch,"in the string is",index)
