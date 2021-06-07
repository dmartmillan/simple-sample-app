from typing import Union

from flask import Flask, jsonify
from flask_cors import CORS, cross_origin

from .entities import songs

app = Flask(__name__)
CORS(app, support_credentials=True)


@app.route('/songs')
@cross_origin(supports_credentials=True)
def get_songs() -> None:
    return jsonify(songs.get_songs())
