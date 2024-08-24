

gcloud config set compute/zone $ZONE

gcloud container clusters create hello-world --num-nodes=2

gsutil -m cp -r gs://spls/gsp022/mongo-k8s-sidecar .

cd ./mongo-k8s-sidecar/example/StatefulSet/

kubectl apply -f googlecloud_ssd.yaml

rm mongo-statefulset.yaml

## add file


kubectl apply -f mongo-statefulset.yaml

kubectl get statefulset

sleep 120

kubectl scale --replicas=5 statefulset mongo

sleep 100

kubectl scale --replicas=3 statefulset mongo

sleep 60

kubectl get pods