#Create an Azure service principal:
SERVICE_PRINCIPAL_NAME=spn4gav2022demo
SERVICE_PRINCIPAL=$(az ad sp create-for-rbac --name $SERVICE_PRINCIPAL_NAME)
 
#Run the following commands to fill the credentials variables:
CLIENT_ID=$(echo $SERVICE_PRINCIPAL | jq -r .appId)
CLIENT_SECRET=$(echo $SERVICE_PRINCIPAL | jq -r .password)
TENANT_ID=$(echo $SERVICE_PRINCIPAL | jq -r .tenant)
SUBSCRIPTION_ID=$(az account show | jq -r .id)
SUBSCRIPTION_NAME=$(az account show | jq -r .name)