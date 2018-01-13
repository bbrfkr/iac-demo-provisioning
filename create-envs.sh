ansible-playbook -i hosts playbooks/create-instances.yaml
./ec2.py --refresh-cache > /dev/null
ansible-playbook -i ec2.py --private-key ~/bbrfkr-keypair-for-aws.pem playbooks/wait-for-instances-up.yaml
ansible-playbook -i ec2.py --private-key ~/bbrfkr-keypair-for-aws.pem playbooks/deploy-instances.yaml
