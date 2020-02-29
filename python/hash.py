
import hashlib


result = hashlib.md5(b'my text')

# printing the equivalent byte value.
print("The byte equivalent of hash is : ", end ="")
print(result.hexdigest())



from hashlib import md5

def make_md5(s, encoding='utf-8'):
    return md5(s.encode(encoding)).hexdigest()

print(make_md5("my text", encoding='utf-8'))
