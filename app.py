from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_geek():
    return '<h1>Hello from Flask & Docker lol oui test</h2>'


if __name__ == "__main__":
    app.run(debug=True)
    
print('okk')
