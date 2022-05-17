from flask import Flask, render_template, request
from werkzeug import secure_filename
app = Flask(__name__, template_folder = ".")

@app.route('/upload')
def upload_file():
    return render_template('9-upload.html')

@app.route('/uploader', methods = ['GET', 'POST'])
def uploader_file():
   if request.method == 'POST':
      f = request.files['file']
      f.save("./uploads/"+secure_filename(f.filename))
      return "file successfully uploaded"

if (__name__ == '__main__'):
    app.run("0.0.0.0",80,True)
