from flask import Flask
import render_template
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Esto es root!'

@app.route('/foo')
def foo():
    return 'Hola, esto es foo'

@app.route('/bar')
def bar():
    return 'Hola, esto es bar'