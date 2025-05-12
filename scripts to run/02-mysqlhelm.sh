curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

#Add the Bitnami Helm Repository:
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

#Install MySQL:
helm install mysql bitnami/mysql -f values.yaml

#Verify the Installation:
kubectl get nodes
