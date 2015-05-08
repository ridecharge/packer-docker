# packer-docker
This is the base packer container. It is used to handle builds by packer for our AMIs.

It has the following on builds
```
ONBUILD WORKDIR /opt/packer
ONBUILD COPY . .
ENTRYPOINT ["make", "packer"]
```

which expects to copy all the files in the docker root over and run a `make packer` command which must be implemented in the repos container the AMI packer descriptions.
