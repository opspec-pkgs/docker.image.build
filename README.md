[![Build Status](https://travis-ci.org/opspec-pkgs/docker.image.build.svg?branch=master)](https://travis-ci.org/opspec-pkgs/docker.image.build)

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

# Releases

releases are versioned according to
[![semver 2.0.0](https://img.shields.io/badge/semver-2.0.0-brightgreen.svg)](http://semver.org/spec/v2.0.0.html)
and [tagged](https://git-scm.com/book/en/v2/Git-Basics-Tagging); see
[CHANGELOG.md](CHANGELOG.md) for release notes

# Contributing

see [project/CONTRIBUTING.md](https://github.com/opspec-pkgs/project/blob/master/CONTRIBUTING.md)
