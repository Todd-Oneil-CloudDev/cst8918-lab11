/* 
    used by terraform init in the infra/tf-app directory
*/
resource_group_name  = "onei-sar-githubactions-rg"
storage_account_name = "oneisargithubactions"
container_name       = "tfstate"
key                  = "prod.app.tfstate"
use_oidc             = true