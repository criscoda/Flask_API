from flask import Flask
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)

class Homepage(Resource):
    def get(self):
        return {'home' : 'pagedockwer'}

api.add_resource(Homepage, '/')

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)
