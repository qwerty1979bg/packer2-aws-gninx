# Packer template to create an nginx box on Amazon AWS

This repository contains a Packer template for building Amazon AMI machine image
containing a base Linux distribution with nginx server installed.

## Usage

1. [Install Packer.](https://www.packer.io/intro/getting-started/install.html#precompiled-binaries)
2. Clone this repository and `cd` into it.

Run the following:

```
$ export AWS_ACCESS_KEY="your aws access key"
$ export AWS_SECRET_KEY="your aws secret key"
$ packer build nginx.json
```

At the end of that, you should have an AMI ready + automatic kitchen test performed.

## Manual testing with [kitchen-ec2](https://github.com/test-kitchen/kitchen-ec2).

1. Install [ChefDK](https://downloads.chef.io/chefdk)
`Optional` 2. Install the [AWS CLI tools](https://docs.aws.amazon.com/cli/latest/userguide/installing.html)
Run the following:

```
$ export AWS_ACCESS_KEY="your aws access key"
$ export AWS_SECRET_KEY="your aws secret key"
$ export AMI_NAME="the ami name that is being tested"
$ kitchen test
```

