# app.py - a minimal flask api using flask_restful
from flask import Flask
from flask_restful import Resource, Api
import uuid 

id = uuid.uuid1() 

app = Flask(__name__)
api = Api(app)

class HelloWorld(Resource):
    def get(self):
        return {'hello': f'world - {id}'}

api.add_resource(HelloWorld, '/')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
