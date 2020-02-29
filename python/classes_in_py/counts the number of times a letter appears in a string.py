def count_a(char,text):
    count = 0
    for c in text:
        if c == char:
            count += 1
    return(count)


s = input("Enter a string : ")
ch = input("Enter a character : ")

counts = count_a(ch,s)


print("The counts of of",ch,"in the string is",counts)