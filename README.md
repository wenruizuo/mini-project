********NOTE: The code files are in the week10/project/...

This is an app specifical for dragging data information for those doctors' average charge amount. 

The data resource comes from website:https://developer.betterdoctor.com/documentation15
and public API: https://developer.betterdoctor.com


The maptree for this mini_project:
1)Utilize following code to complete interaction with external REST services, so as to Use of on an external Cloud database for persisting information.
/*
app = Flask(__name__)
userkey = '081d07c1c7d279672704a4360fc45c7e'
url_template = 'https://api.betterdoctor.com/2016-03-01/doctors?first_name={name}&skip=0&limit=10&user_key={api_key}'
@app.route('/External/<name>',  methods=['GET'])
def doctorchart(name):
    url = url_template.format(name=name,api_key=userkey)
*/  

2)Input http://127.0.0.1:8080/External/<name> to access to all information for the <name>.

3)
/*
@app.route('/Cassandra/<name>')
def profile(name):
    rows = session.execute( """Select * From doctor.stats where name = '{}'""".format(name))
    for row in rows:
        return('<h1>{} average charge amt =  {} !</h1>'.format(name,doctor.average_charge_amt))
    return('<h1>That name does not exist!</h1>')
*/

-----------------------------------------------------------------------------------------------------------------------
In Google Cloud, I try to use Cassandra and Tuberlete to merely demonstrate the doctor's name and their avg_charge_amt.
Some key command is followed:

#Set the region and zone for our new cluster.#
gcloud config set compute/zone europe-west2-b
export PROJECT_ID="$(gcloud config get-value project -q)"

#create a 3 node cluster named cassandra#
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"

#define a service, a Headless service allows peer discovery,a Replication Controller allows us to scale up and down the number of containers#
wget -O cassandra-peer-service.yml http://tinyurl.com/yyxnephy 
wget -O cassandra-service.yml http://tinyurl.com/y65czz8e
wget -O cassandra-replication-controller.yml http://tinyurl.com/y2crfsl8

#run component#
kubectl create -f cassandra-peer-service.yml
kubectl create -f cassandra-service.yml
kubectl create -f cassandra-replication-controller.yml

#check and scale up nodes#
kubectl get pods -l name=cassandra
kubectl scale rc cassandra --replicas=3

#check the ring and find the running node# 
kubectl exec -it cassandra-** -- nodetool status 
kubectl exec -it cassandra-** cqlsh

#build keyspace and craete table via‘cqlsh’ and insert data to this table (tried to use doctor.CSV but still cannot get correct result)#
CREATE KEYSPACE doctor WITH REPLICATION =
  {'class' : 'SimpleStrategy', 'replication_factor' : 2};
CREATE TABLE doctor.stats (name text PRIMARY KEY, avg_charge_amt float);
INSERT INTO doctor.stats(name,avg_charge_amt) VALUES (‘Kim’,567.123);
Select * from doctor.stats

#bulid app.py/Dockerfile/Requirements.txt#
view...

#build data and put inot google respository#
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1

#Run as a service and get a externar IP#
kubectl run iris5 --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris5 --type=LoadBalancer --port 80  --target-port 8080
kubectl get services 
35.242.140.83(an example)


