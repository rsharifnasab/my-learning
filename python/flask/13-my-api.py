#!/usr/bin/env python
import os
from flask import Flask, abort, request, jsonify, url_for
from flask_httpauth import HTTPBasicAuth
from passlib.apps import custom_app_context as pwd_context

# initialization
app = Flask(__name__)
app.config['SECRET_KEY'] = 'the quick brown fox jumps over the lazy dog'

# extensions
auth = HTTPBasicAuth()

def verify_auth_token(token):
    return True # TODO : load from file

def verify_client(client):
    valid_clients = ["android"]
    return (client in valid_clients)

@auth.verify_password
def verify_password(token, client):
    if not verify_client(client): return False
    if not verify_auth_token(token): return False
    return True

@app.route('/api/resource')
@auth.login_required
def get_resource():
    return jsonify({'data': 'Hello, '})


app.run(host = "0.0.0.0" , port = 80, debug = True)
