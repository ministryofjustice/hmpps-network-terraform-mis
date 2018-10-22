vpc_supernet = "10.161.99.0/24"

public-cidr = {
  az1 = "10.161.99.0/27"

  az2 = "10.161.99.32/27"

  az3 = "10.161.99.64/27"
}

private-cidr = {
  az1 = "10.161.99.96/27"

  az2 = "10.161.99.128/27"

  az3 = "10.161.99.160/27"
}

db-cidr = {
  az1 = "10.161.99.208/28"

  az2 = "10.161.99.224/28"

  az3 = "10.161.99.240/28"
}

aws_nameserver = "10.161.99.2"

public_ssl_arn = "arn:aws:acm:eu-west-2:723123699647:certificate/0b97aef6-3c80-48c2-818c-855d493b2d81"