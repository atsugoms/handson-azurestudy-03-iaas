#!/bin/bash

terraform apply -auto-approve

az vm run-command invoke \
  --command-id RunPowerShellScript \
  --name \
  --resource-group \
  --scripts @cloud-init.ps1
