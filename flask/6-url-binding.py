from flask import Flask , redirect , url_for
app = Flask(__name__)

@app.route("/")
def root():
    """
    this method will be called in case of calling localhost
    """
    print("root called")
    return "hello from root"

@app.route("/admin/")
def hello_admin():
    return "hello admin"

@app.route("/guest/<guest>/")
def hello_guest(guest):
    return "hello " + guest + " as guest"

@app.route("/user/<name>/")
def hello_user(name):
    if name == 'admin':
        return redirect(url_for('hello_admin'))
    return redirect(url_for('hello_guest', guest = name))

if (__name__ == '__main__'):
    app.run("0.0.0.0",80,True)
