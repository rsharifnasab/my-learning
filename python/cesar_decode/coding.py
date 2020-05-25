
freq = ["e","t","a","o","i","n","s","r","h","l","d","c","u","m","f","p","g","w","y","b","v","k","x","j","q","z"]

def encode(s,key):
	key = int(key)
	ans = ""
	for c in s:
		new = ord(c) + key
		ans = ans + chr(new);
	return ans;

def decode(s,key):
	key = int(key)
	ans = ""
	for c in s:
		new = ord(c) - key
		ans = ans + chr(new);
	return ans;

def freq_char_list(s):
	db = {}
	for c in s:
		temp = ord(c)
		try:
			db[temp]+=1
		except:
			db[temp] = 1

	all_ans =  sorted(db, key=db.__getitem__)
	all_ans.reverse()
	return all_ans;
	return chr(all_ans[0])


def user_valid(s):
	print("\n\nis it ok? \n"," \n")
	print(s)
	order = input("(yes or no)")
	if order in ["YES", "yes" , "y" , "Y"]:
		return True
	return False;


def valid(s):
	return user_valid(s)


def auto(s):
	freq_list = freq_char_list(s)
	i = 0
	for c in freq:
		try:
			c = ord(c)
			f  = freq_list[i]
			key = -(c - f)
			print("key is :",key)
			ans = decode(s,key)
			if valid(ans):
				string2file(ans,"auto.txt")
				break;
		except:
			pass
		i+=1

def file2string():
	file = input("please enter file address: ")
	if file == "" :  file = "encrypted.txt"
	f = open(file,"rt")
	value = f.read()
	return value

def string2file(s,address):
	print("writing to file:", address)
	f = open(address, "w")
	f.write(s)


while True:
	order = input("what shoud i do? : \n (e = encode) \n (d = decode) \n (a = auto decode) \n")

	if order in [ "exit" , "q" , "Q" , "quit"]: break

	elif order in ["e", "E" , "encode"] :
		value = file2string()
		key = input("please enter key : ")
		ans = encode(value,key)
		string2file(ans,"encrypted.txt")

	elif order in ["d", "D" , "decode"]:
		value = file2string()
		key = input("please enter key : ")
		ans = decode(value,key)
		string2file(ans,"decrypted.txt")

	elif order in ["A", "a" , "auto"]:
		value = file2string()
		auto(value)

	else:
		print("pls try again\n")
