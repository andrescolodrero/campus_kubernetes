from flask import Flask, render_template
import requests

app = Flask(__name__)

# Route for the front-end
@app.route('/')
def index():
    try:
        # Fetch data from the backend API
        response = requests.get('http://backend-service:5000/api/hello')
        
        # Check if the response status code is 200 (OK)
        if response.status_code == 200:
            # Try to parse the JSON response
            backend_response = response.json()
            message = backend_response.get('message')
        else:
            # Handle non-200 status codes gracefully
            message = f"Error: {response.status_code} - {response.text}"
    except Exception as e:
        # Handle any other exceptions gracefully
        message = f"An error occurred: {str(e)}"
    
    return render_template('index.html', message=message)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
