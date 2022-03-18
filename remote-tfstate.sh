#!/bin/sh
  
# Create Resource Group
az group create -l koreacentral -n rg-bgzb-tfstate
  
# Create Storage Account
az storage account create -n sa4bgzbtfstate -g rg-bgzb-tfstate -l koreacentral  --sku Standard_LRS
  
# Create Storage Account blob
az storage container create  --name bgzbtfstatecont --account-name sa4bgzbtfstate