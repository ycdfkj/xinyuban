from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/api/login', methods=['POST'])
def login():
    return jsonify({'success': True, 'message': '登录成功'})

@app.route('/api/health', methods=['GET'])
def health():
    return jsonify({'status': 'ok', 'message': 'API运行正常'})

if __name__ == '__main__':
    app.run(debug=True)
