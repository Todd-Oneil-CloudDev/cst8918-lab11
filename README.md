# cst8918-lab11

to run tf-backend terraform [apply / plan]
terraform [apply / plan] -var="subscription_id=<your sub id>" [if plan] --out=myplan.plan

executing terraform init with a .hcl file
terraform init -backend-config ../tf-backend/prod.backend.hcl
