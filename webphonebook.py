from flask import Flask
app = Flask(__name__)
book_file = "book.json"
index_file = "index.html"

@app.route('/')
def hello_world():
    with open(index_file, "r") as f:
        data = f.read()
        return data

@app.route('/getbook')
def get_book():
    with open(book_file, "r") as f:
        data = f.read()
        if len(data) > 1:
            return data
        else:
            return "{}"
