#init:
   # terraform init

#validate:
    #terraform fmt -recursive
    #terraform validate

#plan:
    #terraform validate
    #terraform plan -var-file="variables.tfvars"

#apply:
    #terraform apply -var-file="variables.tfvars" --auto-approve

#destroy:
    #terraform destroy -var-file="variables.tfvars"

#all: validate plan apply



.DEFAULT_GOAL := make

export AWS_ROLE = eval $(aws sts assume-role --role-arn arn:aws:iam::589436415925:role/configurator --role-session-name test | jq -r '.Credentials | "export AWS_ACCESS_KEY_ID=\(.AccessKeyId) AWS_SECRET_ACCESS_KEY=\(.SecretAccessKey) AWS_SESSION_TOKEN=\(.SessionToken)"')

lint:
	@terraform fmt -recursive

init:
	@terraform init -backend-config=vars/dev.backend.tfvars

apply:	
	(eval $(AWS_ROLE));  env
	# terraform apply -var-file=vars/dev.tfvars

assume: 