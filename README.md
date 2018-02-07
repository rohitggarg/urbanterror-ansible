# Setup Urban Terror Server on Mac or Linux

Pretty simple ansible project to host one or more urban terror servers and remote administration framework using configuration template

### Steps to setup
1. Download the urban terror, unzip at a place say ```/foo```

2. To install on a remote machine at ```/bar``` and start from there
```shell
ansible-playbook play.yml -e UTR_HOST_PATH /foo -e UTR_REMOTE_PATH /bar
```

3. To remove the remote setup from ```/bar```
```shell
ansible-playbook play.yml -e state=absent -e UTR_REMOTE_PATH /bar
```