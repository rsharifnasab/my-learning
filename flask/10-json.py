from flask import Flask, jsonify, abort , make_response, redirect, url_for, request
from werkzeug import secure_filename
app = Flask(__name__)

to_send =  [
    {
        'id' : 0,
        'title' : u'buy',
        'done' : False
    },
    {
        'id' : 1,
        'title' : u'learn flask',
        'done' : True
    }
]

@app.route('/api/all')
def give_all():
    return jsonify({'tasks':to_send})


@app.route('/api/')
def to_give_all():
    return redirect(url_for("give_all"))

@app.route('/api/<int:id>')
def give_by_index(id):
    try:
        task = to_send[id]
        return jsonify({'task': task })
    except:
        abort(404)

@app.route('/api/add', methods=['POST'])
def add():
    if not request.json or not 'title' in request.json:
        abort(400)
    task = {
        'id': to_send[-1]['id'] + 1,
        'title': request.json['title'],
        'description': request.json.get('description', ""),
        'done': False
    }
    to_send.append(task)
    return jsonify({'task': task}), 201

@app.route('/api/remove/<int:task_id>', methods=['DELETE'])
def delete_task(task_id):
    task = [task for task in to_send if task['id'] == task_id]
    if len(task) == 0:
        abort(404)
    to_send.remove(task[0])
    return jsonify({'result': True})

@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify({'error':'Not ffoundd'},404))

if (__name__ == '__main__'):
    app.run("0.0.0.0",80,True)
