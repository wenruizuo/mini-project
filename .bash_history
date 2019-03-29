mkdir week10 && cd week10
gcloud config set compute/zone europe-west2-b
docker pull cassandra:latest
docker cp pokemon.csv cassandra-test:/home/pokemon.csv
CREATE KEYSPACE pokemon WITH REPLICATION =
CREATE KEYSPACE pokemon WITH REPLICATION = {'class' : 'SimpleStrategy', 'replication_factor' : 1};
CREATE KEYSPACE pokemon WITH REPLICATION ={'class' : 'SimpleStrategy', 'replication_factor' : 1};
docker exec -it cassandra-test cqlsh
docker cp pokemon.csv cassandra-test:/home/pokemon.csv
docker run --name cassandra-test -d cassandra:latest
docker cp pokemon.csv cassandra-test:/home/pokemon.csv
gcloud container clusters create cassandra --num-nodes=3
gcloud services enable container.googleapis.com
:~/week10 (aerobic-canto-235912)$  gcloud container clusters create cassandra --num-nodes=3  --machine-type "n1-standard-2"
WARNING: In June 2019, node auto-upgrade will be enabled by default for newly created clusters and node pools. To disable it, use the `--no-enable-autoupgrade` flag.
WARNING: Starting in 1.12, new clusters will have basic authentication disabled by default. Basic authentication can be enabled (or disabled) manually using the `--[no-]enable-basic-auth` flag.
WARNING: Starting in 1.12, new clusters will not have a client certificate issued. You can manually enable (or disable) the issuance of the client certificate using the `--[no-]issue-client-certificate` flag.
WARNING: Currently VPC-native is not the default mode during cluster creation. In the future, this will become the default mode and can be disabled using `--no-enable-ip-alias` flag. Use `--[no-]enable-ip-alias` flag to suppress this warning.
WARNING: Starting in 1.12, default node pools in new clusters will have their legacy Compute Engine instance metadata endpoints disabled by default. To create a cluster with legacy instance metadata endpoints disabled in the default node pool, run `clusters create` with the flag `--metadata disable-legacy-endpoints=true`.
This will enable the autorepair feature for nodes. Please see https://cloud.google.com/kubernetes-engine/docs/node-auto-repair for more information on node autorepairs.
WARNING: Starting in Kubernetes v1.10, new clusters will no longer get compute-rw and storage-ro scopes added to what is specified in --scopes (though the latter will remain included in the default --scopes). To use these scopes, add them explicitly to --scopes. To use the new behavior, set container/new_scopes_behavior property (gcloud config set container/new_scopes_behavior true).
ERROR: (gcloud.container.clusters.create) ResponseError: code=403, message=Kubernetes Engine API is not enabled for this project. Please ensure it is enabled in Google Cloud Console and try again: visit https://console.cloud.google.com/apis/api/container.googleapis.com/overview?project=aerobic-canto-235912 to do so.
gcloud services enable container.googleapis.com
gcloud container clusters create cassandra --num-nodes=3
wenrui_zuo@cloudshell:~/week10 (aerobic-canto-235912)$ gcloud container clusters create cassandra --num-nodes=3
WARNING: In June 2019, node auto-upgrade will be enabled by default for newly created clusters and node pools. To disable it, use the `--no-enable-autoupgrade` flag.
WARNING: Starting in 1.12, new clusters will have basic authentication disabled by default. Basic authentication can be enabled (or disabled) manually using the `--[no-]enable-basic-auth` flag.
WARNING: Starting in 1.12, new clusters will not have a client certificate issued. You can manually enable (or disable) the issuance of the client certificate using the `--[no-]issue-client-certificate` flag.
WARNING: Currently VPC-native is not the default mode during cluster creation. In the future, this will become the default mode and can be disabled using `--no-enable-ip-alias` flag. Use `--[no-]enable-ip-alias` flag to suppress this warning.
WARNING: Starting in 1.12, default node pools in new clusters will have their legacy Compute Engine instance metadata endpoints disabled by default. To create a cluster with legacy instance metadata endpoints disabled in the default node pool, run `clusters create` with the flag `--metadata disable-legacy-endpoints=true`.
This will enable the autorepair feature for nodes. Please see https://cloud.google.com/kubernetes-engine/docs/node-auto-repair for more information on node autorepairs.
WARNING: Starting in Kubernetes v1.10, new clusters will no longer get compute-rw and storage-ro scopes added to what is specified in --scopes (though the latter will remain included in the default --scopes). To use these scopes, add them explicitly to --scopes. To use the new behavior, set container/new_scopes_behavior property (gcloud config set container/new_scopes_behavior true).
ERROR: (gcloud.container.clusters.create) ResponseError: code=403, message=Kubernetes Engine API is not enabled for this project. Please ensure it is enabled in Google Cloud Console and try again: visit https://console.cloud.google.com/apis/api/container.googleapis.com/overview?project=aerobic-canto-235912 to do so.
wenrui_zuo@cloudshell:~/week10 (aerobic-canto-235912)$     --machine-type "n1-standard-2"
-bash: --machine-type: command not found
wenrui_zuo@cloudshell:~/week10 (aerobic-canto-235912)$
wenrui_zuo@cloudshell:~/week10 (aerobic-canto-235912)$ gcloud container clusters create cassandra --num-nodes=3
WARNING: In June 2019, node auto-upgrade will be enabled by default for newly created clusters and node pools. To disable it, use the `--no-enable-autoupgrade` flag.
WARNING: Starting in 1.12, new clusters will have basic authentication disabled by default. Basic authentication can be enabled (or disabled) manually using the `--[no-]enable-basic-auth` flag.
WARNING: Starting in 1.12, new clusters will not have a client certificate issued. You can manually enable (or disable) the issuance of the client certificate using the `--[no-]issue-client-certificate` flag.
WARNING: Currently VPC-native is not the default mode during cluster creation. In the future, this will become the default mode and can be disabled using `--no-enable-ip-alias` flag. Use `--[no-]enable-ip-alias` flag to suppress this warning.
WARNING: Starting in 1.12, default node pools in new clusters will have their legacy Compute Engine instance metadata endpoints disabled by default. To create a cluster with legacy instance metadata endpoints disabled in the default node pool, run `clusters create` with the flag `--metadata disable-legacy-endpoints=true`.
This will enable the autorepair feature for nodes. Please see https://cloud.google.com/kubernetes-engine/docs/node-auto-repair for more information on node autorepairs.
WARNING: Starting in Kubernetes v1.10, new clusters will no longer get compute-rw and storage-ro scopes added to what is specified in --scopes (though the latter will remain included in the default --scopes). To use these scopes, add them explicitly to --scopes. To use the new behavior, set container/new_scopes_behavior property (gcloud config set container/new_scopes_behavior true).
ERROR: (gcloud.container.clusters.create) ResponseError: code=403, message=Kubernetes Engine API is not enabled for this project. Please ensure it is enabled in Google Cloud Console and try again: visit https://console.cloud.google.com/apis/api/container.googleapis.com/overview?project=aerobic-canto-235912 to do so.
wenrui_zuo@cloudshell:~/week10 (aerobic-canto-235912)$     --machine-type "n1-standard-2"
-bash: --machine-type: command not found
wenrui_zuo@cloudshell:~/week10 (aerobic-canto-235912)$ 
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
gcloud services enable container.googleapis.com
mkdir week10 && cd week10
docker pull cassandra:latest
docker run --name cassandra-test -d cassandra:latest
e37f00b6dfe3801a". You have to remove (or rename) that container to be able to reuse that name.
See 'docker run --help'.


docker run --name cassandra-1 -d cassandra:latest
gcloud config set compute/zone europe-west2-b
docker pull cassandra:latest
docker run --name cassandra-test -d cassandra:latest
docker cp pokemon.csv cassandra-test:/home/pokemon.csv
docker exec -it cassandra-test cqlsh
gcloud container clusters create cassandra --num-nodes=3  --machine-type "n1-standard-2"
gcloud services enable container.googleapis.com
gcloud container clusters create cassandra --num-nodes=3  --machine-type "n1-standard-2"
gcloud services enable container.googleapis.com
ls
cd week10/
ls
head pokemon.csv 
ls
cd week10
export PROJECT_ID="$(gcloud config get-value project -q)"
docker pull cassandra:latest
docker run --name cassandra-test -d cassandra:latest
head pokemon.csv
docker cp pokemon.csv cassandra-test:/home/pokemon.csv
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
gcloud services enable container.googleapis.com
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
wget -O cassandra-peer-service.yml http://tinyurl.com/yyxnephy
kubectl create -f cassandra-peer-service.yml
kubectl get pods -l name=cassandra
kubectl exec -it cassandra-24bgm -- nodetool status
kubectl get pods -l name=cassandra
kubectl scale rc cassandra --replicas=3
kubectl exec -it cassandra-6rj7w -- nodetool status
kubectl cp pokemon.csv cassandra-6rj7w:/pokemon.csv
kubectl exec -it cassandra-24bgm cqlsh
kubectl exec -it cassandra-6rj7w cqlsh
view requirements.txt
view Dockerfile
view app.py
docker push gcr.io/${PROJECT_ID}/pokemon-app:v1
view requirements.txt
docker push gcr.io/${PROJECT_ID}/pokemon-app:v1
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 
docker push gcr.io/${PROJECT_ID}/pokemon-app:v1
docker images
kubectl get pods -l name=cassandr
export PROJECT_ID="$(gcloud config get-value project -q)"
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 
view requirments.txt
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 .
view requirments.tx
view requirments.txt
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 .
cat requirments.txt 
rm requirements.txt 
ls
cat requirments.txt 
vim requirments.txt 
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 .
mv requirments.txt requirements.txt 
ls
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 .
ls
vim requirements.txt 
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 .
docker images
docker image rm ed8dc3680d60
docker image rm -f ed8dc3680d60
docker image rm -f b43effc04c0d
docker image rm -f e51a25069a00
docker image rm -f 616fe6767037
docker images
docker container clusters list
gcloud container clusters list
cat app.py 
cat Dockerfile 
vim Dockerfile 
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 .
cat Dockerfile 
cat requirements.txt 
ls
cat requirements.txt 
kubectl get all
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 .
docker images
docker image ecfb5fa62761
docker image rm ecfb5fa62761
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 .
view requirements.txt
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 .
view requirements.txt
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 .
view requirements.txt 
ls
cat Dockerfile 
cat requirements.txt 
vim requirements.txt 
cat requirements.txt 
cat Dockerfile 
cat app.py 
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 .
cd week10
mkdir week10 && cd week10
docker pull cassandra:latest
docker exec -it cassandra cqlsh
docker images ls
docker pull cassandra:latest
docker images ls
docker run --name cassandra-test -d cassandra:latest
docker exec -it cassandra cqlsh
docker exec -it cassandra-test cqlsh
docker images ls
gcloud config set compute/zone europe-west2-b
docker pull cassandra:latest
docker run --name cassandra-test -d cassandra:latest
docker exec -it cassandra-test cqlsh
docker ps
docker exec -it cassandra-test cqlsh
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
gcloud services enable container.googleapis.com
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
wget -O cassandra-peer-service.yml http://tinyurl.com/yyxnephy
kubectl scale rc cassandra --replicas=3
kubectl exec -it cassandra-jwqkr -- nodetool status
kubectl scale rc cassandra --replicas=3
kubectl exec -it cassandra-jwqkr -- nodetool status
kubectl scale rc cassandra --replicas=3
kubectl exec -it cassandra-jwqkr -- nodetool status
view requirements.txt
view Dockerfile
view app.py
docker build -t gcr.io/${PROJECT_ID}/pokemon-app:v1 .
docker build -t gcr.io/${PROJECT_ID}/Doctor-app:v1 .
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
view Dockerfile
view requirements.txt
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
view app.py
docker images
docker image rm -f 67352e65da11
docker image rm -f 6c0ab1ead8fe
docker image rm -f c4cb81573a25
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
kubectl run pokemon-app --image=gcr.io/${PROJECT_ID}/pokemon-app:v1
kubectl run pokemon-app --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment doctor-app --type=LoadBalancer --port 80 --target-port 8080
kubectl run doctor-app --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment doctor-app --type=LoadBalancer --port 80 --target-port 8080
kubectl get services
kubectl get ppods
kubectl get pods
kubectl describe doctor-app-86787f7c97-p5744 
kubectl describe pod doctor-app-86787f7c97-p5744 
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker images
docker push gcr.io/${PROJECT_ID}/pokemon-app:v1
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run pokemon-app --image=gcr.io/${PROJECT_ID}/pokemon-app:v1
kubectl run pokemon-app --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl run iris --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris --type=LoadBalancer --port 80 --target-port 8080
kubectl get pods
ls
view requirements.txt
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl run iris2 --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris2 --type=LoadBalancer --port 80 --target-port 8080
kubectl get pods
kubectl describe pod iris2-f5d474dbc-jzgdx
kubectl get pods -l name=cassandra
kubectl exec -it cassandra-24bgm cqlsh
kubectl exec -it cassandra-gh2cb cqlsh
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris3 --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris3 --type=LoadBalancer --port 80 --target-port 8080
kubectl get pods
view app.py
view requirements.txt
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris4 --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris4 --type=LoadBalancer --port 80 --target-port 8080
kubectl get pods
kubectl describe pod iris4-9fd66b57f-x6rzj
docker images
docker image rm -f c4086ca138ac,f01cff82207d
docker image rm -f c4086ca138ac
docker image rm -f f01cff82207d
docker image rm -f a00f715f96ac
docker image rm -f fdd71b830561
docker image rm -f ac71c1df4d7e
docker images
docker image rm -f ea4d817d1461
view requirements.txt
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris5 --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris5 --type=LoadBalancer --port 80 --target-port 8080
kubectl get pods
view requirements.txt
view app.py
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris6 --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris5 --type=LoadBalancer --port 80 --target-port 8080
kubectl expose deployment iris6 --type=LoadBalancer --port 80 --target-port 8080
kubectl get pods
kubectl describe get iris6-6d6fcb6599-db9mv 
kubectl describe pod iris6-6d6fcb6599-db9mv 
kubectl delete --all replicationcontroller
gcloud container clusters delete cassandra
gcloud container clusters list
kubectl get pods
gcloud config set compute/zone europe-west2-b
export PROJECT_ID="$(gcloud config get-value project -q)"
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
export PROJECT_ID="$(gcloud config get-value project -q)"
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
kubectl create -f cassandra-peer-service.yml
kubectl create -f cassandra-service.yml
kubectl create -f cassandra-replication-controller.yml
kubectl get pods -l name=cassandra
kubectl scale rc cassandra --replicas=3
kubectl exec -it cassandra-gxn8b --nodetool status 
kubectl exec -it cassandra-gxn8b -- nodetool status 
kubectl exec -it cassandra-gxn8b -- nodetool status
kubectl scale rc cassandra --replicas=3
kubectl exec -it cassandra-gxn8b -- nodetool status
requirements.txt
cat requirements.txt
Dockerfile
cat Dockerfile
kubectl exec -it cassandra-gxn8b -- nodetool status
kubectl exec -it cassandra-gxn8b --nodetool status 
kubectl get pods -l name=cassandra
kubectl exec -it cassandra-849wx -- nodetool status
kubectl exec -it cassandra-849wx cqlsh
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment doctor-app --type=LoadBalancer --port 80  --target-port 8080
kubectl expose deployment iris --type=LoadBalancer --port 80  --target-port 8080
kubectl get pods
kubectl get services
kubectl get pods
kubectl describe  pod 
kubectl describe  pod iris-6b6cb88645-q5hbw
view app.py
cat app.py
kubectl get services
view app.py
view requirements.txt
view Dockerfile
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
export PROJECT_ID="$(gcloud config get-value project -q)"
docker pull cassandra:latest
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
wget -O cassandra-peer-service.yml http://tinyurl.com/yyxnephy
kubectl create -f cassandra-peer-service.yml
kubectl create -f cassandra-service.yml
kubectl create -f cassandra-replication-controller.yml
kubectl scale rc cassandra --replicas=3
kubectl exec -it cassandra-849wx -- nodetool status 
kubectl exec -it cassandra-849wx cqlsh
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris --type=LoadBalancer --port 80  --target-port 8080
kubectl get services
view app.py
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris --type=LoadBalancer --port 80  --target-port 8080
kubectl get services
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
kubectl create -f cassandra-peer-service.yml
kubectl create -f cassandra-service.yml
kubectl create -f cassandra-replication-controller.yml
kubectl get pods -l name=cassandra
kubectl scale rc cassandra --replicas=3
kubectl exec -it cassandra-849wx -- nodetool status 
docker run --name cassandra-test -d cassandra:latest
kubectl scale rc cassandra --replicas=3
kubectl create -f cassandra-peer-service.yml
kubectl create -f cassandra-service.yml
kubectl create -f cassandra-replication-controller.yml
kubectl get pods -l name=cassandra
kubectl exec -it cassandra-849wx -- nodetool status 
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
gcloud config set compute/zone europe-west2-b
export PROJECT_ID="$(gcloud config get-value project -q)"
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
gcloud config set compute/zone europe-west2-b
docker pull cassandra:latest
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
kubectl create -f cassandra-peer-service.yml
kubectl create -f cassandra-service.yml
kubectl create -f cassandra-replication-controller.yml
kubectl create -f cassandra-peer-service.yml
kubectl get pods -l name=cassandra
kubectl scale rc cassandra --replicas=3
kubectl exec -it cassandra-849wx -- nodetool status
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris --type=LoadBalancer --port 80  --target-port 8080
kubectl get services
docker pull cassandra:latest
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
kubectl create -f cassandra-peer-service.yml
kubectl scale rc cassandra --replicas=3
kubectl create -f cassandra-peer-service.yml
kubectl exec -it cassandra-849wx -- nodetool status 
kubectl exec -it cassandra-849wx cqlsh
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris --type=LoadBalancer --port 80  --target-port 8080
kubectl get services
view app.py
ls
cat app.py 
view app.py
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris --type=LoadBalancer --port 80  --target-port 8080
kubectl get services 
view app.py
ls
cd week10
ls
cd..
python3 -m venv flask_venv
sudo apt-get install python3-venv
source flask_venv/bin/activate
python3 -m venv flask_venv
source flask_venv/bin/activate
ls
python app.py
view app.py
python app.py
pip3 install Flask
python app.py
pip3 install cassandra
pip3 install cassandra-driver
pip install canssandra-driver --install-option="--no-cython"
pip3 install canssandra-driver --install-option="--no-cython"
sudo pip3 install canssandra-driver --install-option="--no-cython"
sudo pip3 install cassandra-driver --install-option="--no-cython"
python app.py
view app.py
python app.py
pip3 install cassandra-driver --install-option="--no-cython"
python app.py
kubectl get services
view app.py
kubectl get services
python app.py
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
export PROJECT_ID="$(gcloud config get-value project -q)"
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris5 --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris --type=LoadBalancer --port 80  --target-port 8080
kubectl get services
kubectl expose deployment iris5 --type=LoadBalancer --port 80  --target-port 8080
kubectl get services 
kubectl get pods
kubectl get services
get post
kubectl get services
view app.py
kubectl get pods
kubectl describe pod q   0/1       Error     6          6m
kubectl describe pod iris5-6c545bd44f-56j7q
kubectl get pods
kubectl describe pod iris-6b6cb88645-q5hbw
kubectl get pods
kubectl get services
view app.py
kubectl delete --all replicationcontroller
kubectl delete --all services
gcloud container clusters delete cassandra
gcloud config set compute/zone europe-west2-b
gcloud container clusters delete cassandra
mkdir week10 && cd week10
gcloud config set compute/zone europe-west2-b
export PROJECT_ID="$(gcloud config get-value project -q)"
docker pull cassandra:latest
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
mkdir week10 && cd week10
gcloud config set compute/zone europe-west2-b
docker pull cassandra:latest
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
gcloud container clusters create cassandra --num-nodes=4 --machine-type "n1-standard-2"
gcloud container clusters create cassandra --num-nodes=3 --machine-type "n1-standard-2"
wget -O cassandra-peer-service.yml http://tinyurl.com/yyxnephy
 
kubectl get pods -l name=cassandra
kubectl exec -it cassandra-j8f8v -- nodetool status
kubectl get pods -l name=cassandra
kubectl exec -it cassandra-b2gnm -- nodetool status
kubectl exec -it cassandra-x6649 -- nodetool status
kubectl exec -it cassandra-x6649 cqlsh
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/doctor-app:v
view requirements.txt
view app.py
view Dockerfile
docker build -t gcr.io/${PROJECT_ID}/doctor-app:v1 .
docker push gcr.io/${PROJECT_ID}/pokemon-app:v1
docker push gcr.io/${PROJECT_ID}/doctor-app:v1
kubectl run iris5 --image=gcr.io/${PROJECT_ID}/doctor-app:v1 --port 8080
kubectl expose deployment iris5 --type=LoadBalancer --port 80  --target-port 8080
kubectl get services
git init
git config user.name "Wenrui Zuo"
git config user.email arman.khouzani@qmul.ac.uk
git config user.name "wenruizuo"
/var/folders/y7/83yfnk_d0cngdsvt40kw47br0000gn/T/com.apple.Preview/com.apple.Preview.PasteboardItems/CC_Week08_Lab_Security_Git（被拖移）.pdf
git config user.email wenrui.zuo@gmail.com
