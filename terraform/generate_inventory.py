import json
import subprocess

# Run terraform output and capture the IP
output = subprocess.check_output(["terraform", "output", "-json"]).decode("utf-8")
data = json.loads(output)

instance_ip = data["aws_instance_ip"]["value"]

# Write to inventory file
with open("./../ansible/inventory_aws.ini", "w") as f:
    f.write(f"[web]\n{instance_ip} ansible_user=ec2-user ansible_ssh_private_key_file=~/.ssh/devops.pem\n")
