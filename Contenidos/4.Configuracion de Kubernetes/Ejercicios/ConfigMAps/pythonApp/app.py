from flask import Flask
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

@app.route('/hello')
def hello():
    app.config.from_pyfile('/config/config.cfg')
    return app.config['MSG']