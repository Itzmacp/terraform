module "demo-1" {
    source = "./demo"
    Name   = "Cloud-Mac"
    instance_type = "t3.micro"
}

module "demo-2" {
    source = "./demo"
    Name   = "Cloud-Mac-Stage"
    instance_type = "t3.micro"
}