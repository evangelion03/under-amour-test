from flask import Flask

app = Flask(__name__)

@app.route('/v1')
def hello_word():
    return "Hello World I am Rex zheng"

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)

#您好