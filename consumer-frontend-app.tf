# Purpose: use this file to demo private module registry
# Input Variables: number_of_instances, name
# Configuration:
# 1) Add private module into TFE from https://github.com/mocofound/terraform-aws-consumer-elb
# 2) Add private module into TFE from https://github.com/mocofound/terraform-aws-consumer-ec2-instance
# 3) In code below, for all modules, change module versions appropriatly for your imports (e.g. version = "1.9")
# 4) In code below, for all modules, change source = "" to match your modules source
# 5) Modify variables as needed
# 6) rename file from consumer-frontend-app.nothing to  consumer-frontend-app.tf

module "consumer_ec2_instance" {
  source  = "app.terraform.io/justinlinn/consumer-ec2-instance/aws"
  version = "1.0"

  instance_count = 2
  name = "dev"
}
