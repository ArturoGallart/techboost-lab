### Deployment Log Documentation

#### Existing Resources
1. **Resource Group (rg-techboost-lab-eus2-01):**
   - **ID:** `/subscriptions/<subscription ID>/resourceGroups/rg-techboost-lab-eus2-01`
   - **Name:** `rg-techboost-lab-eus2-01`
   - **Tags:** No tags defined

2. **Virtual Network (vnet-techboost-lab-eus2-01):**
   - **ID:** `/subscriptions/<subscription ID>/resourceGroups/rg-techboost-lab-eus2-01/providers/Microsoft.Network/virtualNetworks/vnet-techboost-lab-eus2-01`
   - **Name:** `vnet-techboost-lab-eus2-01`
   - **Address Spaces:**
     - `10.0.1.0/24`
     - `10.0.2.0/24`
   - **Subnets:**
     - Subnet1: `10.0.1.0/24`
     - Subnet2: `10.0.2.0/24`
   - **Tags:** No tags defined

#### Changes Detected
Terraform detected the following changes made outside of Terraform configuration for the existing resources:
1. **Resource Group (rg-techboost-lab-eus2-01):**
   - Removed tags

2. **Virtual Network (vnet-techboost-lab-eus2-01):**
   - Subnets Updated:
     - Subnet1:
       - **Name:** subnet1
       - **Address Prefix:** 10.0.1.0/24
     - Subnet2:
       - **Name:** subnet2
       - **Address Prefix:** 10.0.2.0/24

#### Proposed Changes
Terraform will perform the following actions to maintain the desired state:
1. **Resource Group (rg-techboost-lab-eus2-02):**
   - **Name:** rg-techboost-lab-eus2-02
   - **Location:** eastus2

2. **Virtual Network (vnet-techboost-lab-eus2-02):**
   - **Name:** vnet-techboost-lab-eus2-02
   - **Address Space:** 10.10.0.0/16
   - **Location:** eastus2
   - **Resource Group:** rg-techboost-lab-eus2-02
   - **Subnets:**
     - Subnet3: `10.10.1.0/24`
     - Subnet4: `10.10.2.0/24`

#### Actions Required
To apply the proposed changes, run the following command:
```
terraform apply "tfplan"
```

The deployment is complete, resulting in the creation of 4 new resources with no updates or deletions.