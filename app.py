from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/error')
def fail():
    return render_template('b47d46.html')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=9001, debug=True)
