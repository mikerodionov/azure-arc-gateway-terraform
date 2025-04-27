# Azure Arc Gateway with Terraform

This repository provides an example of deploying an Azure Arc Gateway with Terraform!

![Release](/assets/portal.png)

## 📄 Usage

### Deploy with Terrraform locally

1. Clone this repository.
2. Copy or rename the `terraform.auto.tfvars.tmpl` file to `terraform.auto.tfvars`. 
3. Fill out the Arc Gateway name and Azure resource group name for use locally.
4. Log in to Azure and run Terraform. The subscription ID can be sourced from the `ARM_SUBSCRIPTION_ID` environment variable.

```powershell
az login
$env:ARM_SUBSCRIPTION_ID = (az account list | ConvertFrom-Json).id
terraform init
terraform plan
terraform approve
```

### Deploy with HCP Terraform

Read the related blog post at https://blog.graa.dev/AzureArc-GatewayTerraform for more information about this scenario.

### Outputs

Use the following outputs when onboarding Azure Connected Machine agents:

```terraform
terraform output

arc_gateway_resource_id = "/subscriptions/<subscriptionId>/resourceGroups/azurelocal/providers/Microsoft.HybridCompute/gateways/<gatewayName>"
arc_gateway_url = "<gatewayId>.gw.arc.azure.com"
```

## ✍ Blog post

See the related blog post at https://blog.graa.dev/AzureArc-GatewayTerraform.

## 👏 Contributions

Any contributions are welcome and appreciated!