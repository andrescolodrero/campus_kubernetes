from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from the backend!"

@app.route('/api/hello')
def hello_api():
    response_data = {
        'message': 'Hello from the backend API!'
    }
    return jsonify(response_data)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)