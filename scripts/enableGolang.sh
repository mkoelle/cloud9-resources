# https://docs.aws.amazon.com/cloud9/latest/user-guide/sample-go.html

sudo yum -y update

wget https://storage.googleapis.com/golang/go1.9.3.linux-amd64.tar.gz # Download the Go installer.
sudo tar -C /usr/local -xzf ./go1.9.3.linux-amd64.tar.gz              # Install Go.
rm ./go1.9.3.linux-amd64.tar.gz                                       # Delete the installer.


echo  'PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc 

echo  'GOPATH=~/environment/go' >> ~/.bashrc 

echo  'export GOPATH' >> ~/.bashrc 

