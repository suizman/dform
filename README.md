# dForm Docker Terraform container

### Installation
More elaborated installation will be available soon, util then you can set this alias in you .bashrc|.zshrc :

```
alias terraform="docker run -it --rm --env-file=$HOME/.secret --volume=$PWD:/data suizman/dform:latest"
```

### Configuration:
* Put all you important stuff ie: AWS_SECRET_KEY in $HOME/.secret

### Usage:
* Just as always you must be in a directory that contains the Terraform files ie: main.tf|variables.tf etc..
