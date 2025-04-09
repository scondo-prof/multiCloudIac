projectName = "test"

deployedDate = "2025-04-10"

tfModule = "generic-route-table"

routeTableObjects = [
  {
    vpc_id = "vpc-934696ee"
    name = "test"
    route = [
      {
        cidr_block = "0.0.0.0/0"
        gateway_id = "igw-56b8bf2d"
      },
      {
        cidr_block = "172.31.0.0/16"
        gateway_id = "local"
      }
    ]
  },
  {
    vpc_id = "vpc-934696ee"
    name = "test-2"
    route = [
      {
        cidr_block = "0.0.0.0/0"
        gateway_id = "igw-56b8bf2d"
      },
      {
        cidr_block = "172.31.0.0/16"
        gateway_id = "local"
      }
    ]
  }
]