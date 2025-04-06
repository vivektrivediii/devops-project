import json
import subprocess

# Run terraform output
output = subprocess.check_output(["terraform", "output", "-json"]).decode("utf-8")
data = json.loads(output)

azure_ip = data["vm_public_ip"]["value"]

with open("./../ansible/inventory_azure.ini", "w") as f:
    f.write(f"[azure]\n{azure_ip} ansible_user=azureuser ansible_password='P@ssword1234!' ansible_connection=ssh ansible_ssh_common_args='-o StrictHostKeyChecking=no'\n")



# import json
# import subprocess

# # Get output from terraform
# output = subprocess.check_output(["terraform", "output", "-json"]).decode("utf-8")
# data = json.loads(output)

# # Get the public IP from terraform output
# azure_ip = data["vm_public_ip"]["value"]

# # Write to inventory_azure.ini
# with open("./../ansible/inventory_azure.ini", "w") as f:
#     f.write(f"[azure]\n{azure_ip} ansible_user=azureuser ansible_ssh_private_key_file=~/.ssh/azure.pem\n")
