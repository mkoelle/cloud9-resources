# Cloud9 resources

## Scripts

Collection of scripts to add more functionality into the base cloud9 instance on AWS and set some defaults

Executing the init.sh should

* Update node
    * Also installs nvm (hardcoded to v0.33.11)
* Update npm
* Install cloud9 cli
* Install the .NET core SDK (hardcoded to v2.1.403)
* Install dependencies for Chromium (hardcoded to a several packages and versions)
* Update python3
    * Also updates pip
    * Also installs pipenv
* Update golang (hardcoded to v1.11.1)

## Templates

Cloud formation templates for recreating the c9 environment.

[Click here to create a c9 instance in EU (Ireland) now!](https://console.aws.amazon.com/cloudformation/home?region=eu-west-1#/stacks/create/review?stackName=c9-magicbox&templateURL=https://s3.amazonaws.com/dev.cloudformation.mkoelle.com/c9.yaml)

[Click here to create a c9 instance in US East (N. Virginia) now!](https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create/review?stackName=c9-magicbox&templateURL=https://s3.amazonaws.com/dev.cloudformation.mkoelle.com/c9.yaml)

## TODO

* Check if things exist and dont reinstall them if so
* Remove hardcoded versions
* Add git-flow cli helper
* Add saml2aws-auto
