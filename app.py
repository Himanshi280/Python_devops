# def add(a, b):
#     return a + b

# if __name__ == "__main__":
#     print("3 + 4 =", add(3, 4))

from flask import Flask, request, jsonify
from utils import add

app = Flask(__name__)

@app.route('/add', methods=['GET'])
def add_route():
    try:
        a = int(request.args.get('a', 0))
        b = int(request.args.get('b', 0))
        result = add(a, b)
        return jsonify({"result": result})
    except Exception as e:
        return jsonify({"error": str(e)}), 400

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
