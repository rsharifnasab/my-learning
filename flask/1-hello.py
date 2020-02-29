from flask import Flask 

app = Flask(__name__)

@app.route("/")
def asli():
    print("the moethid called")
    return "havij"

if (__name__ == '__main__'):
    app.run("0.0.0.0",80,True)


"""
    this will return havij in case of calling 127.0.0.1:80 or any other ip
    if you remove "0.0.0.0"and 80 port it will set ony to 127.0.0.1 and 5000 port
"""
