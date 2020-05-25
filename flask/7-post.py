from flask import Flask, redirect, url_for, request
app = Flask(__name__)

user_list = [ 'roozbeh' , 'alborz']

@app.route('/success/<name>')
def success(name):
   return 'welcome %s' % name

@app.route('/failure/<cause>')
def failure(cause):
    return "you are not logged in because " + cause

@app.route('/login',methods = ['POST', 'GET'])
def login():
    if request.method != 'POST':
        return redirect(url_for("failure",cause = "wrong method"))

    if 'name_field' not in request.form.keys():
        return redirect(url_for("failure" , cause = "not valid post"))

    user = request.form['name_field']
    if user not in user_list:
        return redirect(url_for("failure" , cause = "not authorized user"))

    return redirect(url_for('success',name = user))

if (__name__ == '__main__'):
    app.run("0.0.0.0",80,True)
