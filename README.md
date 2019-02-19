# Bash images for .devkit project tests

This is a docker image for compatibility-testing [.devkit](https://github.com/bashup/.devkit)-based projects with specific versions of bash.  It adds the following modules to an official `bash` image:

* `less` and `ncurses` (for paging test results and cutting them to the current screen size)
* `py-pygments` (for colorizing the test diffs)
* `python` (for running [cram](https://bitheap.org/cram))
* `git` (to fetch dependencies)
* `entr` and `modd` (to support .devkit's `watch` command)
* `jq`, `yaml2json` and `py-yaml` (for [jqmd](https://github.com/bashup/jqmd))
* `php7` as `php` (for testing [imposer](https://github.com/dirtsimple/imposer))
* `go` and `musl-dev` (for building go-based dependencies)
* `shellcheck` (for linting shell scripts)

By default, it builds from bash 3.2, but you can set `--build-arg BASH_VER=some.version` to create an image based on a specific bash version.  It has a work directory called `/workdir`, so mounting `$PWD` to `/workdir` will let you run things from the current directory.

To use it interactively on the command line, just do, e.g.:

```shell
docker run --rm -it -v "$PWD:/workdir" bashitup/bash-kit:3.2
```

(Or whatever bash version you want, that's available in the [current tags](https://hub.docker.com/r/bashitup/bash-kit/tags/).)
