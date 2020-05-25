from flask import Flask

app = Flask(__name__)

@app.route("/")
def root():
    """
    this method will be called in case of calling localhost
    """
    print("root called")
    return "hello from root"

@app.route("/string/<input>")
def string_getter(input):
    """
        this will accept anything as string
    """
    return "hello, i got " + input

@app.route("/num/<int:input>")
def number_getter(input):
    """
        this will accept only integer
    """
    return "you enterred :" + str(input) + " as num"

@app.route("/num/<float:input>")
def float_getter(input):
    """
        this will accept float
    """
    return "you enterred :" + str(input) + " as float"


if (__name__ == '__main__'):
    app.run("0.0.0.0",80,True)
