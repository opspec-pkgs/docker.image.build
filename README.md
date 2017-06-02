# problem statement
builds a docker image

# example usage

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
  inputs: { dockerfile, context, imageName }
  outputs: { imageTar }
```