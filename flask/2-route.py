from flask import Flask

app = Flask(__name__)

@app.route("/")
def root():
    """
    this method will be called in case of calling localhost
    """
    print("root called")
    return "hello from root"

@app.route("/do")
def second():
    """
    this method will be called in case of calling localhost/do
    """
    print("second method called")
    return "hello from second method"


if (__name__ == '__main__'):
    app.run("0.0.0.0",80,True)

"""
    this will respose calling 127.0.0.1:80 or any other ip
    if you remove "0.0.0.0"and 80 port it will set ony to 127.0.0.1 and 5000 port
"""
