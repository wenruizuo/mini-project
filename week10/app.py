
from flask import Flask, request
from cassandra.cluster import Cluster

#cluster = Cluster(['cassandra'])
cluster = Cluster(['35.246.21.56'])
session = cluster.connect()
app = Flask(__name__)


@app.route('/')
def hello():
    name = request.args.get("name","World") 
    return('<h1>Sorry {}, We cannot provide any doctor information.</h1>'.format(name)) 


@app.route('/doctor/,<name>')
def profile(name):
    rows = session.execute( """Select * From pokemon.stats where name = '{}'""".format(name)) 
    
    for pokemon in rows:
        return('<h1>The doctors are ascendingly close to you are {} {} {} {} {}</h1>'.format(name,pokemon.attack)) 

    return('<h1>Sorry, no information is found</h1>')
   
    
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)

