import random 
rnd ,chc =  random.randint , random.choice #making code brief
c = "bcdfghjklmnpqrstvwxyz" #normal alphabet
C = "BCDFGHJKLMNPQRSTVWXYZ" #capital alphapet
v = "aeiou" #vowels!
n = "0123456789" #numbers!
class student:
	def __init__(self,f_name = "",l_name="",m_code="",d_code="",nomarat=None):
		self.f_name , self.l_name , self.m_code , self.d_code = f_name , l_name , m_code , d_code
		if nomarat == None : nomarat = []		
		self.nomarat=nomarat

	def __str__(self): #return name and last name for printing
		return self.f_name + " " + self.l_name
		
	def av_nomre(self,r = 2): # calculate average nomre
		return round(sum(self.nomarat)/len(self.nomarat) , r)
	
	def name_random_gen(self,a=1,b=4): #this will generate and retuern a name between 2 and 12 character(default) 
		name  = "" 
		t=rnd(a,b)
		for i in range(t):
			if i ==0 : name = chc(C) # make first character capital
			else :  name = name + chc(c)
			name = name + chc(v)
			if random.getrandbits(1) : name= name + chc(c)
		return name

	def name_choose(self,min_length=3, filename="names.txt"): #this will choose a name from entered file randomly and return 
		with open(filename) as wordbook: # this 4 lines copied from stackowerflow :)
			words = (line.rstrip('\n') for line in wordbook)
			large_words = [word for word in words if len(word) >= min_length]
		return random.choice(large_words)

	def nomre_gen(self): # if a is true.. appent to nomarat   else : return it
		s = 21	
		while s > 20: #be sure that number isnt more than 20 (sth like 20.50)
			s =  float ( str(rnd(8,20)) + "." + str(rnd(0,99)) )
		self.nomarat.append(s)
		
	def m_code_gen(self): # generate 10 digit melli code randomly
		m = "0"
		for i in range(9): m = m + chc(n)
		self.m_code = m	

	def d_code_gen(self): # generate student code randomly 
		m ,t =  "" , rnd(9,10)
		for i in range(t):	m = m + chc(n)
		self.d_code = m 	

	def fill(self, tedad_nomre = 10): # this will fill in the blanks of student randomly
		#if self.f_name=="" : self.f_name = self.name_random_gen(2,3)
		if self.f_name=="" : self.f_name = self.name_choose(3,"names.txt")
		#if self.l_name=="" : self.l_name = self.name_random_gen(2,4)
		if self.l_name=="" : self.l_name = self.name_choose(4,"lnames.txt")

		if self.nomarat == [] or True : 
			for i in range(tedad_nomre): self.nomre_gen()
		
		if self.m_code=="" : self.m_code_gen()
		if self.d_code=="" : self.d_code_gen()
			
	def print(self): # note that it is my custom print to print all information
		print(self.f_name,self.l_name , "," ,self.av_nomre(), "," , self.m_code , "," , self.d_code )

t = 10
#t = int (input("enter count of students : "))
print("Name Lastname Average Melli_code Student_code ")
db = []
for i in range(t):
	temp = student()
	temp.fill()
	db.append(temp)
	
for i in range(len(db)): db[i].print()
