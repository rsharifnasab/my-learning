from flask import Flask

app = Flask(__name__)

@app.route("/")
def root():
    """
    this method will be called in case of calling localhost
    """
    print("root called")
    return "hello from root"

@app.route("/tool/<int:input>")
def that_num(input):
    """
        this will give an int and return num
    """
    return str(input )

@app.route("/tool/<int:input>/plus/")
def num_plus_one(input):
    """
        this will give an int and return num + 1
        it will accept both ../plus and ../plus/
    """
    return str(input + 1)

@app.route("/tool/<int:input>/minus")
def num_minus_one(input):
    """
        this will give an int and return num - 1
        it wont accept ../minus/
    """
    return str(input - 1)




if (__name__ == '__main__'):
    app.run("0.0.0.0",80,True)
