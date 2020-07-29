class Singleton:
    instance = None
    initialized = False

    def __new__(cls):
        print("newww") #aslan print nemishe!
        if cls.instance is None:
            cls.instance = super().__new__(cls)
        return cls.instance

    def __init__(self):
        if self.initialized: return 

        print("init just one time")
        self.initialized = True

print("main")
a = Singleton()
b = Singleton()
assert a is b
print(f"a is b")

