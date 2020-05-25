from flask import Flask, jsonify, make_response
from flask_httpauth import HTTPBasicAuth
auth = HTTPBasicAuth()
app = Flask(__name__)

@auth.get_password
def get_password(username):
    if username == 'roozbeh':
        return 'python'
    return None

@auth.error_handler
def unauthrized():
    return make_response(jsonify({'error':"Unauthorized access"}),403)

@app.route('/api/all', methods=['GET'])
@auth.login_required
def get():
    return jsonify({'tasks': "hala masaln hast dige"})


if (__name__ == '__main__'):
    app.run("0.0.0.0",80,True)
