import flask
from flask import Flask, render_template, request, jsonify
import json
import requests
import  requests_cache


app = Flask(__name__)

userkey = '081d07c1c7d279672704a4360fc45c7e'

url_template = 'https://api.betterdoctor.com/2016-03-01/doctors?first_name={name}&skip=0&limit=10&user_key={api_key}'



@app.route('/External/<name>',  methods=['GET'])
def doctorchart(name):
    url = url_template.format(name=name,api_key=userkey)


    # header = {"User-agent":"crul/7.43.0", "Accept": "application/json", "user_key": userkey}
    resp = requests.get(url)#,header=header)
    if resp.ok:
        print ('test ok')
        out = resp.json()
    else:
        return(resp.reason)

    return (jsonify(out))


@app.route('/Cassandra/<name>')
def profile(name):
    rows = session.execute( """Select * From doctor.stats where name = '{}'""".format(name))
    for row in rows:
        return('<h1>{} average charge amt =  {} !</h1>'.format(name,doctor.average_charge_amt))
    return('<h1>That name does not exist!</h1>')


if __name__=="__main__":
    app.run(host='0.0.0.0', port=8080)
