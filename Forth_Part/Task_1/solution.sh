sed -i "s/ec2-private_ip/$(grep PrivateIpAddress info.json | head -n1 | cut -d'"' -f4)/g" terraform.tf

#sed -i "s/ec2-private_ip/$(cat info.json | grep -i "privateıpaddress" | head -1 | cut -d'"' -f4)/" terraform.tf
