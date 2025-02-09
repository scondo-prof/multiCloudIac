.PHONY: ssh-k8s
ssh-prod-k8s:
	ssh -i k8_manager_pem.pem ec2-user@ec2-54-145-33-214.compute-1.amazonaws.com

copy_main:
	aws s3 cp main.py s3://gm-emr-scripts/main.py