# Problem statement
builds a docker image

# Example usage

> note: in examples, VERSION represents a version of the docker.image.build pkg

## install

```shell
opctl pkg install github.com/opspec-pkgs/docker.image.build#VERSION
```

## run

```
opctl run github.com/opspec-pkgs/docker.image.build#VERSION
```

## compose

```yaml
op:
  pkg: { ref: github.com/opspec-pkgs/docker.image.build#VERSION }
  inputs: 
    dockerfile:
    context:
    imageName:
  outputs:
    imageTar:
```

# Support

join us on [![Slack](https://opspec-slackin.herokuapp.com/badge.svg)](https://opspec-slackin.herokuapp.com/)
or [open an issue](https://github.com/opspec-pkgs/docker.image.build/issues)
