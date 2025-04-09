projectName = "test"

deployedDate = "2025-04-10"

tfModule = "generic-subnet"

subnetObjects = [
  {
    name = "test-public"
    cidr_block = "172.31.120.0/28"
  },
  {
    name = "test-private"
    cidr_block = "172.31.122.0/28"
  }
]

subnetVpcId = "	vpc-934696ee"